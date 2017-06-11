require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'cucumber/rake/task'
require 'pry'
require 'require_all'
require 'headless'
require 'faker'
#require 'headless'

require_all './lib/app.rb'
require_all './lib/page/*.rb'

Capybara.register_driver :firefox do |app|
  driver = Capybara::Selenium::Driver.new(app, :browser => :firefox)
  driver
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

 Capybara.register_driver :headless do |app|
   Capybara::Selenium::Driver.new(app, :browser => :firefox)
 end


if ENV['BROWSER'] == nil
  default_driver = "chrome".to_sym
elsif ENV['BROWSER'].downcase == ('firefox'||'chrome')
  binding.pry
  default_driver = ENV['BROWSER'].to_sym
elsif ENV['BROWSER'].downcase == 'headless'
	#set up headless stuff
	#TODO add in heasdless setup here
  # require 'headless'
  # headless = Headless.new
  # headless.start
  #for now, just run as chrome
  default_driver = "chrome".to_sym
else
	raise "#{ENV['BROWSER'].downcase} can not be used as a browser. Please use firefox, chrome or headless"
end

Capybara.configure do |config|
  config.default_driver = default_driver
  config.run_server = false
  config.default_selector = :css
  config.default_max_wait_time=  2
  config.ignore_hidden_elements = true
  config.visible_text_only = false
  config.match = :first
  config.exact_options = true
  config.app_host = 'https://next.farmdrop.com'
end
