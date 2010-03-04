require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "posterous-api"
    gem.version = "0.0.1"
    gem.summary = %q{Posterous API wrapper}
    gem.email = "miha@rebernik.info"
    gem.homepage = "http://github.com/mihar/posterous-api"
    gem.authors = ["Miha Rebernik"]
    # gem.add_dependency('httparty')
    gem.add_dependency('activesupport')
  end

rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :default => :spec

Jeweler::GemcutterTasks.new