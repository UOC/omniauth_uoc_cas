# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth_uoc_cas/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth_uoc_cas'
  spec.version       = OmniauthUocCas::VERSION
  spec.authors       = ['rromerogar']
  spec.email         = ['rromerogar@uoc.edu']
  spec.summary       = %q{ OmniAuth provider that supports authentication against UOC CAS. }
  spec.homepage      = 'http://github.com/rromerogar/omniauth_uoc_cas'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_dependency 'omniauth-cas', '~> 1.0.4'
end
