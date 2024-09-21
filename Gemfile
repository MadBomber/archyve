source 'https://rubygems.org'

ruby File.open('.ruby-version', 'r').read

##############################
## Primary MVC Frameworks

gem 'rails', '~> 7.1.3', '>= 7.1.3.2'  # Full-stack web application framework.
gem 'pg'                               # Pg is the Ruby interface to the PostgreSQL RDBMS
gem 'puma', '>= 5.0'                   # Puma is a simple, fast, threaded, and highly parallel HTTP 1.1 server for Ruby/Rack applications

gem 'sprockets-rails'                  # Sprockets Rails integration


############
# AI-related
gem 'baran', '~> 0.1.12'    # Text Splitter for Large Language Model Datasets
gem 'ruby-openai', '~> 7.1' # OpenAI API + Ruby! 🤖🩵


#################
# Background Jobs
gem 'redis', '>= 4.0.1'         # A Ruby client library for Redis
gem 'sidekiq', '~> 7.2'         # Simple, efficient background processing for Ruby
gem 'sidekiq-cron', '~> 1.12'   # Scheduler/Cron for Sidekiq jobs


################
# Authentication
gem 'devise', '~> 4.9'  # Flexible authentication solution for Rails with Warden


##########
# graph DB
gem 'activegraph', '11.5.0.beta.2'  # A graph database for Ruby
gem 'async', '2.11.0'               # A concurrency framework for Ruby.
gem 'neo4j-ruby-driver', '~> 4.4'


##################
# error monitoring
gem 'sentry-rails'    # A gem that provides Rails integration for the Sentry error logger
gem 'sentry-ruby'     # A gem that provides a client interface for the Sentry error logger
gem 'sentry-sidekiq'  # A gem that provides Sidekiq integration for the Sentry error logger


###############
# Frontend Gems
gem 'font-awesome-rails', '~> 4.7'  # An asset gemification of the font-awesome icon font library
gem 'importmap-rails'               # Use ESM with importmap to manage modern JavaScript in Rails without transpiling or bundling.
gem 'sassc-rails'                   # Integrate SassC-Ruby into Rails.
gem 'stimulus-rails'                # A modest JavaScript framework for the HTML you already have.
gem 'tailwindcss-rails'             # Integrate Tailwind CSS with the asset pipeline in Rails.
gem 'turbo-rails'                   # The speed of a single-page web application without having to write any JavaScript.


##############
# Backend Gems
gem 'aasm', '~> 5.5'                # State machine mixin for Ruby objects
gem 'activestorage', '~> 7.1'       # Local and cloud file storage framework.
gem 'bootsnap', require: false      # Boot large ruby/rails apps faster
gem 'httparty', '~> 0.21.0'         # Makes http fun! Also, makes consuming restful web services dead easy.
gem 'image_processing', '~> 1.2'    # High-level wrapper for processing images for the web with ImageMagick or libvips.
gem 'jbuilder'                      # Create JSON structures via a Builder-style DSL
gem 'motor-admin', '~> 0.4.26'      # Low-code Admin panel and Business intelligence
gem 'open3', '~> 0.2.1'             # Popen, but with stderr, too
gem 'pagy', '~> 8.0'                # The best pagination ruby gem
gem 'pdf-reader', '~> 2.12'         # A library for accessing the content of PDF files
gem 'rails_admin', '~> 3.0.beta2'   # Admin for Rails
gem 'tzinfo-data', platforms: %i[jruby]


##################################################
## non-production Environment Groups

group :development, :test do
  gem 'amazing_print'               # Pretty print Ruby objects with proper indentation and colors
  gem 'debug', platforms: %i[mri]   # Debugging functionality for Ruby
  gem 'debug_me'                    # A tool to print the labeled value of variables.
  gem 'factory_bot_rails'           # factory_bot_rails provides integration between factory_bot and rails 5.0 or newer
  gem 'pry-rails', '~> 0.3.9'       # Use Pry as your rails console
  gem 'rubocop', '~> 1.62'          # Automatic Ruby code style checking tool.
  gem 'rubocop-rails', '~> 2.24'    # Automatic Rails code style checking tool.
  gem 'rubocop-rspec', '~> 2.28'    # Code style checking for RSpec files
  gem 'timecop', '~> 0.9.10'        # A gem providing "time travel" and "time freezing" capabilities, making it dead simple to test time-dependent code.  It provides a unified method to mock Time.now, Date.today, and DateTime.now in a single call.
end

group :development do
  gem 'ruby-lsp', '~> 0.14.6'      # An opinionated language server for Ruby
  gem 'ruby-lsp-rails', '~> 0.3.3' # A Ruby LSP addon for Rails
  gem 'web-console'                # A debugging tool for your Ruby on Rails applications.
end

group :test do
  gem 'capybara'                   # Capybara aims to simplify the process of integration testing Rack applications, such as Rails, Sinatra or Merb
  gem 'faker'                      # Easily generate fake data
  gem 'fuubar'                     # the instafailing RSpec progress bar formatter
  gem 'json-schema'                # Ruby JSON Schema Validator
  gem 'rspec-rails', '~> 6.1'      # RSpec for Rails
  gem 'rspec-uuid'                 # RSpec::UUID
  gem 'selenium-webdriver'         # Selenium is a browser automation tool for automated testing of webapps and more
end

