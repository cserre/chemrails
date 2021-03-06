# coding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require 'chemrails/version'

Gem::Specification.new do |spec|
  spec.name          = "chemrails"
  spec.version       = ChemRails::VERSION
  spec.authors       = ["Dominic Lütjohann"]
  spec.email         = ["dominic@luetjohann.com"]
  spec.description   = "Description"
  spec.summary       = "Summary"
  spec.homepage      = ""
  spec.license       = "GPLv3"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
