require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara-screenshot'
require 'capybara-screenshot/cucumber'
require 'pry'
require 'site_prism'
require "dotenv"
require "faker"
require "rspec/expectations"

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time= 30
    #config.app_host = "https://buger-eats-qa.vercel.app"
    Capybara::Screenshot.autosave_on_failure = false
    Capybara.page.driver.browser.manage.window.maximize
end