# frozen_string_literal: true

require 'allure-cucumber'
require 'hs-api'


# Allure
AllureCucumber.configure do |config|
  config.results_directory = 'report/allure-results'
  config.clean_results_directory = true
  config.logging_level = Logger::INFO
  config.logger = Logger.new($stdout, Logger::DEBUG)
  config.environment = 'staging'
end
