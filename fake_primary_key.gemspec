# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fake_primary_key/version'

Gem::Specification.new do |spec|
  spec.name          = "fake_primary_key"
  spec.version       = FakePrimaryKey::VERSION
  spec.authors       = ["Naveen Agarwal"]
  spec.email         = ["naveenagarwal287@gmail.com"]
  spec.description   = %q{This fakes the 'id' as primary key }
  spec.summary       = %q{This fakes the 'id' as primary key }
  spec.homepage      = "https://github.com/naveenagarwal/fake_primary_key.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
