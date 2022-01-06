require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara-screenshot'
require 'capybara-screenshot/cucumber'
require 'pry'
require 'site_prism'

INFO = YAML.load_file('./features/yaml/todo.yml')

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #_headless
    config.default_max_wait_time= 30
    Capybara::Screenshot.autosave_on_failure = true
    Capybara.page.driver.browser.manage.window.maximize
end