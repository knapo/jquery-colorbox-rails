$:.push File.expand_path("../lib", __FILE__)
require "jquery-colorbox/version"

Gem::Specification.new do |s|
  s.name        = "jquery-colorbox-rails"
  s.version     = JqueryColorbox::VERSION
  s.authors     = ["Krzysztof Knapik"]
  s.email       = ["knapo@knapo.net"]
  s.homepage    = "https://github.com/knapo/jquery-colorbox-rails"
  s.summary     = %q{jQuery Colorbox for Rails 3.1+ Asset Pipeline}
  s.description = %q{jQuery Colorbox (http://www.jacklmoore.com/colorbox) for Rails 3.1+ asset pipeline }

  s.rubyforge_project = "jquery-colorbox-rails"
  s.files = Dir["{app,vendor,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.md"]
  s.require_paths = ["lib"]

  s.add_dependency 'railties',   '>= 3.1'
end