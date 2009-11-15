require 'rake'
require 'rake/testtask'
require 'rubygems'  

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the a_okay plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end
  
begin  
  require 'jeweler'  
  Jeweler::Tasks.new do |gemspec|  
    gemspec.name = "a_okay"  
    gemspec.summary = "A simple controller that just returns if everything is 'a okay'!"
    gemspec.description = "A simple controller that just returns if everything is 'a okay'!"
    gemspec.email = "richard@ur-ban.com"  
    gemspec.homepage = "http://github.com/hates/a_okay"
    gemspec.authors = ["Richard Hart"]  
  end 
  Jeweler::GemcutterTasks.new
rescue LoadError  
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end  
  
Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }  

