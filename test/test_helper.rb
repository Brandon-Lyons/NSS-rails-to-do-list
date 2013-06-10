ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'active_record'
require 'capybara/rails'


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting

  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::IntegrationTest
	include Capybara::DSL
	self.use_transactional_fixtures = false
end

DatabaseCleaner.strategy = :transaction
class ActiveSupport::TestCase
  def setup
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end
end