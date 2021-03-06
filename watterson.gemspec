# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'watterson/version'

Gem::Specification.new do |spec|
  spec.name          = 'watterson'
  spec.version       = Watterson::VERSION
  spec.authors       = ['Ben Kreeger']
  spec.email         = ['ben@kree.gr']
  spec.description   = %q{Documentation manager.}
  spec.summary       = %q{Documentation manager.}
  spec.homepage      = 'https://github.com/kreeger/watterson'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'shotgun'

  spec.add_runtime_dependency 'sinatra'
  spec.add_runtime_dependency 'slim'
  spec.add_runtime_dependency 'mongoid'
  spec.add_runtime_dependency 'sidekiq'

end
