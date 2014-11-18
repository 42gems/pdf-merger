ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

require 'capybara/rspec'
require 'capybara/rails'
require 'capybara/webkit/matchers'
Capybara.javascript_driver = :webkit


RSpec.configure do |config|

  config.expect_with :rspec do |expectations|

  end

  config.mock_with :rspec do |mocks|

  end

  config.include Capybara::DSL

end