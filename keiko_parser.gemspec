# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'keiko_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "keiko_parser"
  spec.version       = Keiko::Parser::VERSION
  spec.authors       = ["Guillermo Rodríguez Cano"]
  spec.email         = ["wschutz@gmail.com"]
  spec.description   = %q{Custom parser for AUVASA's site}
  spec.summary       = %q{Keiko::Parser library}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", "~> 1.6.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
