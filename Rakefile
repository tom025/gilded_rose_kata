require 'rake/javaextensiontask'
require 'rspec/core/rake_task'

Rake::JavaExtensionTask.new('gilded_rose')

RSpec::Core::RakeTask.new(:spec)

task :default => [:compile, :spec]
