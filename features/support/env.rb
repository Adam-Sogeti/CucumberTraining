require 'rubygems'
require 'watir-webdriver'
require 'page-object'
require 'page-object/page_factory'

browser = Watir::Browser.new :chrome
Before do |scenario|
  puts "Starting scenario: #{scenario.name}"
  @browser = browser
end

After do |scenario|
  puts "Ending scenario: #{scenario.name}"
  @browser.close
end

World(PageObject::PageFactory)