$:.push File.expand_path("../lib", __FILE__)
require "jquery-colorbox-rails/version"

Gem::Specification.new do |s|
  s.name        = "jquery-colorbox-rails"
  s.version     = JqueryColorboxRails::VERSION
  s.authors     = ["Krzysztof Knapik"]
  s.email       = ["k@knapik.cc"]
  s.license     = 'MIT'
  s.homepage    = "https://github.com/kknapik/jquery-colorbox-rails"
  s.summary     = %q{jQuery Colorbox integration for Rails 3.1+ asset pipeline}
  s.description = %q{jQuery Colorbox [https://github.com/jackmoore/colorbox] integration for Rails 3.1+ asset pipeline}

  s.rubyforge_project = "jquery-colorbox-rails"
  s.files = Dir["{vendor,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.md"]
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'railties', '>= 3.1', '<= 5.0'
end
