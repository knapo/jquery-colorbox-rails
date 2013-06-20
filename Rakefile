#!/usr/bin/env rake
require 'bundler/setup'
require 'bundler/gem_tasks'

task :update do
	puts 'Updating source files...'
	`git submodule update`

	puts 'Copying source files...'
	source_files = Dir['colorbox/**/*.js'].reject{ |file| file =~ /.min.js\Z/}
  source_files.each do |file|
  	puts "#{file}"
    FileUtils.cp(file, 'vendor/assets/javascripts')
  end
end