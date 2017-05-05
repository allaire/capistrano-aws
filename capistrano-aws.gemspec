# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name = 'capistrano-aws'
  gem.version = '0.0.1'
  gem.author = 'Fernando Carletti'
  gem.email = 'contact@fernandocarletti.net'
  gem.homepage = 'http://github.com/xurumelous/capistrano-aws'
  gem.summary = 'Integrates capistrano with AWS.'
  gem.description = 'Allow dynamically add servers based on EC2.'

  gem.license = 'MIT'

  gem.files = `git ls-files -z`.split("\x0").reject { |f| f =~ /^docs/ }
  gem.executables = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.required_ruby_version = '>= 2.0'

  gem.add_dependency 'aws-sdk', '~>2.9'
  gem.add_dependency 'terminal-table', '~>1.7'
  gem.add_dependency 'colorize', '~>0.8'

  gem.add_development_dependency 'rubocop', '~>0.48'
end
