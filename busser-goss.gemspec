# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'busser/goss/version'

Gem::Specification.new do |spec|
  spec.name          = 'busser-goss'
  spec.version       = Busser::Goss::VERSION
  spec.authors       = ['Mathieu Sauve-Frankel']
  spec.email         = ['msf@kisoku.net']
  spec.description   = %q{A Busser runner plugin for Goss}
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/kisoku/busser-goss'
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'busser'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'aruba'

  spec.add_development_dependency 'cane'
  spec.add_development_dependency 'tailor'
  spec.add_development_dependency 'countloc'
end
