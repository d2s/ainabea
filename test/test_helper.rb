# Code Climate code coverage testing
# http://docs.codeclimate.com/article/219-setting-up-test-coverage
# https://codeship.com/documentation/analytics/code-climate/
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

# Codecov code coverage testing
# https://github.com/integrations/codecov
# https://codecov.io/
require 'simplecov'
SimpleCov.start
if ENV['CI']=='true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

# Basic tests
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml
  # for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
