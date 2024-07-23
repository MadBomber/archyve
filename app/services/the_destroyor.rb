class TheDestroyor
  DELETE_BATCH_SIZE = 100

  def initialize(document)
    @document = document
  end

  def destroy
    @document.deleting!

    delete_embeddings

    @document.destroy!
  end

  def delete_embeddings
    @document.chunks.select(:id, :vector_id).find_in_batches(batch_size: DELETE_BATCH_SIZE) do |chunks|
      Rails.logger.info("Destroying batch of #{chunks.count} chunks...")
      chromadb.delete_documents(collection_id, chunks.map(&:vector_id))

      Chunk.destroy(chunks)
    rescue Chromadb::ResponseError => e
      Rails.logger.error("Failed to delete batch of #{chunks.count} chunks: #{e}")
      Rails.logger.error("Destruction of document #{@document.id} will continue, but chunks may remain in ChromaDB.")
    end
  end

  private

  def collection_id
    @collection_id ||= chromadb.collection_id(@document.collection.slug)
  end

  def chromadb
    @chromadb ||= Chromadb::Client.new
  end
end
