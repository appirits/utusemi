$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'utusemi/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'utusemi'
  s.version     = Utusemi::VERSION
  s.authors     = ['YOSHIDA Hiroki']
  s.email       = ['hyoshida@appirits.com']
  s.homepage    = 'https://github.com/hyoshida/utusemi#utusemi'
  s.summary     = 'Providing a flexible alias for column names in ActiveRecord.'
  s.description = 'Providing a flexible alias for column names in ActiveRecord.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'activerecord', '>= 3.2.0'
  s.add_dependency 'railties', '>= 3.2.0'

  s.add_development_dependency 'pg'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'byebug'
  s.add_development_dependency 'pry-rails'
end
