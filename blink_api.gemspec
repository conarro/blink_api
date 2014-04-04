# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blink_api/version'

Gem::Specification.new do |spec|
  spec.name          = "blink_api"
  spec.version       = BlinkApi::VERSION
  spec.authors       = ["Kyle Conarro"]
  spec.email         = ["kyle.conarro@gmail.com"]
  spec.summary       = %q{Ruby wrapper for the Blink Network charging station API}
  spec.description   = %q{Ruby wrapper for the Blink Network charging station API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"

  spec.add_runtime_dependency 'saddle'
end
