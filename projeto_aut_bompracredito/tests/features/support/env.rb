require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'yaml'
require_relative 'page_helper.rb'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Pages)

BROWSER = ENV['BROWSER']
ENVIRONMENT = ENV['ENVIRONMENT']

Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--disable-infobars')
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      options: options
    )
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(
      app,
      browser: :firefox,
      marionette: true
    )
  end
end
