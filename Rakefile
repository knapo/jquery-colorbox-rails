#!/usr/bin/env rake
require 'bundler/setup'
require 'bundler/gem_tasks'

task :update do
  Dir['*.gem'].each{ |f| FileUtils.rm(f) }

	js_dir  = 'vendor/assets/javascripts'
	css_dir = 'vendor/assets/stylesheets'
	img_dir = 'vendor/assets/images'
	[js_dir, css_dir, img_dir].each do |dir|
		FileUtils.rm_r(dir)
		FileUtils.mkdir(dir)
		FileUtils.touch(File.join(dir, '.gitkeep'))
	end

	puts 'Updating source files...'
	`git submodule foreach git pull`

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

	  FileUtils.mkdir_p(target_img_dir)

	  FileUtils.cp Dir[File.join(example, 'images/*')], target_img_dir

	  css_content = File.read File.join(example, 'colorbox.css')
		css_content.gsub!(/url\(\s?images\/([^\)]+)\)/) do |_|
			"image-url('#{File.join('colorbox', example_name,	$1)}')"
		end
	  File.open(File.join(css_dir, "jquery.colorbox-#{example_name}.scss"), 'w') do |f|
	  	f.write(css_content)
	  end
    puts "...ok"
  end

  puts 'Updating version...'
  version = File.read('colorbox/jquery.colorbox.js').match(/Colorbox (\d{1,2}\.\d{1,2}\.\d{1,2})/)[1]
  readme = File.read('README.md')
  puts "Current version is: #{version}"
  new_content = readme.gsub(/(?<=<b id="colorbox-version">)[\d\.]+(?=<\/b>)/, version)
  File.open('README.md','w') { |f| f.write(new_content) }
end

task :build do
	FileUtils.rm_f Dir['*.gem']
	`gem build jquery-colorbox-rails.gemspec`
	built_gem_file = Dir['*.gem'].first
	if built_gem_file
		`gem push #{built_gem_file}`
	else
		raise "Gem was not built!"
	end
end
