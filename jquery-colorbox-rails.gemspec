# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jquery-colorbox/version"

Gem::Specification.new do |s|
  s.name        = "jquery-colorbox-rails"
  s.version     = JqueryColorbox::VERSION
  s.authors     = ["Krzysztof Knapik"]
  s.email       = ["knapo@knapo.net"]
  s.homepage    = "https://github.com/knapo/jquery-colorbox-rails"
  s.summary     = %q{jQuery Colorbox for Rails 3.1+ Asset Pipeline}
  s.description = %q{jQuery Colorbox for Rails 3.1+ asset pipeline}

  s.rubyforge_project = "jquery-colorbox-rails"

  s.files = Dir["{lib,vendor}/**/*"] + ["Rakefile", "README.md"] 
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency             'railties',   '>= 3.1'
  s.add_dependency             'actionpack', '>= 3.1'
  s.add_development_dependency 'rails', '>= 3.1' 
end