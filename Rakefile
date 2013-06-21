#!/usr/bin/env rake
require 'bundler/setup'
require 'bundler/gem_tasks'

task :update do
	js_dir  = 'vendor/assets/javascripts'
	css_dir = 'vendor/assets/stylesheets'
	img_dir = 'vendor/assets/images'
	[js_dir, css_dir, img_dir].each do |dir|
		FileUtils.rm_r(dir)
		FileUtils.mkdir(dir)
	end

	puts 'Updating source files...'
	`git submodule update`

	puts 'Copying source js files...'

	source_files = Dir['colorbox/**/*.js'].reject{ |file| file =~ /.min.js\Z/}
  source_files.each do |file|
  	print "#{file.sub('colorbox/', '')}"
    FileUtils.cp(file, js_dir)
    puts "...ok"
  end

  puts 'Copying css examples files...'

  Dir['colorbox/example*/'].each do |example|
  	example_name = File.basename(example)
  	print "#{example_name}..."
  	target_img_dir = File.join(img_dir, 'colorbox', example_name)
  	target_img_rel_dir = target_img_dir.sub('vendor/assets/','')

	  FileUtils.mkdir_p(target_img_dir)

	  FileUtils.cp Dir[File.join(example, 'images/*')], target_img_dir

	  css_content = File.read File.join(example, 'colorbox.css')
		css_content.gsub!(/url\(\s?images\/([^\)]+)\)/, 'image-url(\'\1\')')
	  File.open(File.join(css_dir, "jquery.colorbox-#{example_name}.css.scss"), 'w') do |f|
	  	f.write(css_content)
	  end
    puts "...ok"
  end
end