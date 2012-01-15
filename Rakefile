require 'rake/javaextensiontask'
require 'rspec/core/rake_task'

Rake::JavaExtensionTask.new('hello_java')

RSpec::Core::RakeTask.new(:spec)

task :default => [:compile, :spec]
