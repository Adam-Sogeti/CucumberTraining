require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'watir-webdriver'
require 'page-object'

task :say_hello do
  puts 'hello world'
end

Cucumber::Rake::Task.new(:testing) do |t|
  cucumber_file = YAML.load(File.open('cucumber.yml'))
  puts cucumber_file['testing']
  t.cucumber_opts = cucumber_file['testing']
end