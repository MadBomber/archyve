module OllamaProxy
  class FormattedChatResponse
    attr_reader :formatted_response, :raw_response

    def initialize(proxy)
      @proxy = proxy

      @formatted_response = ""
      @raw_response = ""
    end

    def generate(&)
      @proxy.post do |chunk|
        # yield the content the server sent, exactly as the server sent it
        yield chunk

        content = extract_content(chunk)
        formatted_message, raw_message = processor.append(content)

        @formatted_response << formatted_message
        @raw_response << raw_message
      end

      # return the complete response, in formatted and unformatted forms
      [@formatted_response, @raw_response]
    end

    private

    def extract_content(chunk)
      response_hash = parse_chunk(chunk)

      response_hash.dig("message", "content") || response_hash.dig("choices", 0, "delta", "content")
    end

    def parse_chunk(chunk)
      # newlines will only appear after a value JSON object, and only in OpenAI compatibility endpoints
      chunk = chunk.lines.first

      # ollama does this for OpenAI-compatible endpoints
      if chunk.start_with?("data: ")
        chunk.gsub!(/^data: /, "")
      end

      JSON.parse(chunk)
    end

    def processor
      @processor ||= MessageProcessor.new
    end
  end
end