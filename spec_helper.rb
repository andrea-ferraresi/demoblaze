require 'capybara/rspec'
require 'env_config'
require 'pry'





EnvConfig.configure do |config|
  config.config_path   = "spec_config.yml"
  config.override_env  = false
end

EnvConfig.set!



Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.register_driver :selenium_firefox do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.register_driver :safari do |app|
  Capybara::Selenium::Driver.new(app, :browser => :safari)
end


Capybara.default_driver = ENV['driver'].to_sym

# this is needed to avoid the flickering scenario where capybara doesn't wait for the page to load
# is this a shortcoming?
#Capybara.default_wait_time = 6 

require './helpers/demoblaze_helpers.rb'

