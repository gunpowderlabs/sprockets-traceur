require "capybara/rspec"
require "capybara/webkit"

ENV["RACK_ENV"]="test"
Capybara.javascript_driver = :webkit
