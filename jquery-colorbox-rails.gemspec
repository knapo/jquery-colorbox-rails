lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery-colorbox-rails/version'

Gem::Specification.new do |spec|
  spec.name        = 'jquery-colorbox-rails'
  spec.version     = JqueryColorboxRails::VERSION
  spec.authors     = ['Krzysztof Knapik']
  spec.email       = ['knapo@knapo.net']

  spec.summary     = 'jQuery Colorbox integration for Rails 3.1+ asset pipeline'
  spec.homepage    = 'https://github.com/knapo/jquery-colorbox-rails'
  spec.license     = 'MIT'

  spec.metadata['homepage_uri'] = 'https://github.com/knapo/jquery-colorbox-rails'
  spec.metadata['source_code_uri'] = 'https://github.com/knapo/jquery-colorbox-rails'

  spec.required_ruby_version = '>= 2.0.0'

  spec.files = Dir['{vendor,lib}/**/*'] + ['LICENSE', 'Rakefile', 'Gemfile', 'README.md']
  spec.require_paths = ['lib']

  spec.add_dependency 'railties', '>= 3.1'

  spec.add_development_dependency 'rake', '~> 10.5'
end


