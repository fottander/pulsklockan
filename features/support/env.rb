require 'cucumber/rails'
require 'factory_bot'

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation

Capybara.ignore_hidden_elements = false

include FactoryBot::Syntax::Methods

After do
  Warden.test_reset!
end

Warden.test_mode!
World Warden::Test::Helpers
