# frozen_string_literal: true
source 'https://rubygems.org'

ruby '2.3.1'

gem 'rails', '5.0.0.1'
gem 'pg', '~> 0.15' # Use postgresql as the database for Active Record

gem 'sidekiq', '~> 4.2' # Background worker (Redis-backed)

gem 'active_model_serializers', '~> 0.10' # Serialize models to JSON

gem 'blazer', '~> 1.7' # Explore data with SQL

# Interact with Frilans Finans API
gem 'frilans_finans_api', path: 'lib/frilans_finans_api'

# JSON API helpers
gem 'json_api_helpers', path: 'lib/json_api_helpers'

gem 'paperclip', '~> 5.1' # Image handler
gem 'aws-sdk', '~> 2.6' # Upload images to AWS S3

gem 'airbrake', '~> 5.6' # Error catcher and reporter

gem 'twilio-ruby', '~> 4.11' # Send SMS notifications

gem 'global_phone', '~> 1.0' # Format cell phone numbers
gem 'countries', '~> 2.0', require: 'countries/global' # Country data in various locales

gem 'apipie-rails', '~> 0.3' # Easy API documentation
gem 'maruku', '~> 0.7' # Needed for apipie-rails markdown support

gem 'kaminari', '~> 0.17' # Easy pagination

gem 'bcrypt', '~> 3.1.7', require: true # Encrypt passwords

gem 'puma', '~> 3.6' # App server

gem 'skylight', '~> 1.0' # Performance monitoring

gem 'geocoder', '~> 1.4' # Geocode resources

gem 'activeadmin', '~> 1.0.0.pre4' # Admin interface
gem 'chosen-rails', '~> 1.5' # Needed for autocomplete select input for activeadmin
gem 'inherited_resources', git: 'https://github.com/activeadmin/inherited_resources' # activeadmin Rails 5
gem 'uglifier', '~> 3.0' # Needed for activeadmin assets compilation

gem 'pundit', '~> 1.1' # Authorization policies

gem 'faker', '~> 1.6' # Easily generate fake data (used for seeding dev/test/staging)

gem 'rack-timeout', '~> 0.4' # Kill requests that run for too long
gem 'rack-cors', '~> 0.4', require: 'rack/cors' # Configure CORS
gem 'rack-attack', '~> 5.0' # Throttle API usage
gem 'redis-activesupport', '~> 5.0' # To use Redis as the cache store for rack-attack

gem 'yagni_json_encoder', '~> 0.0.2' # Make Rails use the OJ gem for JSON
gem 'fast_blank', '~> 1.0' # Re-implements #blank? in C

gem 'rails-i18n', '~> 5.0' # Rails translations
gem 'i18n_data', '~> 0.7' # Language and country names in various languages

gem 'google-cloud-translate', '~> 0.22' # Translate with Google Translate API

gem 'honey_format', '~> 0.2' # Simple CSV reading
gem 'personnummer', '~> 0.0.9' # Swedish "personummer" or "samordningsnummer"
gem 'banktools-se', '~> 2.6' # Validate Swedish bank account
gem 'iban-tools', '~> 1.1' # Validate IBAN

group :development, :test, :docs do
  gem 'byebug', '~> 9.0'
  gem 'rspec-rails', '~> 3.5'
  gem 'rubocop', '~> 0.44', require: false
  gem 'dotenv-rails', '~> 2.1'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'immigrant', '~> 0.3'
  gem 'consistency_fail', '~> 0.3'
  gem 'bullet', '~> 5.0'
  gem 'fog', '~> 1.38' # Cloud services gem, in production the aws-sdk gem is used
  gem 'rspec_junit_formatter', '~> 0.2'
end

group :development do
  gem 'letter_opener', '~> 1.4'
  gem 'binding_of_caller', '~> 0.7'
  gem 'better_errors', '~> 2.1'
  gem 'annotate', '~> 2.7'
  gem 'web-console', '~> 3.3'
  gem 'spring', '~> 2.0'
  gem 'spring-commands-rspec', '~> 1.0'
  gem 'i18n-tasks', '~> 0.9.2'
  gem 'i18n_generators', '~> 2.1'
  gem 'listen', '~> 3.1'
  gem 'derailed_benchmarks', '~> 1.3'
  gem 'stackprof', '~> 0.2'
  gem 'memory_profiler', '~> 0.9'
end

group :test, :docs do
  gem 'codeclimate-test-reporter', '~> 0.6', require: false
  gem 'simplecov', '~> 0.11', require: false
  gem 'database_cleaner', '~> 1.5'
  gem 'webmock', '~> 2.0'
  gem 'rspec-activemodel-mocks', '~> 1.0'
  gem 'rails-controller-testing'
  gem 'timecop', '~> 0.8'
  gem 'fuubar', '~> 2.1'
end
