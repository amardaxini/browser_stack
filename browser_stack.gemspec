# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'browser_stack/version'

Gem::Specification.new do |spec|
  spec.name          = "browser_stack"
  spec.version       = BrowserStack::VERSION
  spec.authors       = ["amardaxini"]
  spec.email         = ["amardaxini@gmail.com"]
  spec.description   = %q{ruby wrapper of browser stack api}
  spec.summary       = %q{ruby wrapper of browser stack api}
  spec.homepage      = "https://github.com/amardaxini/browser_stack"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "net/http"
  spec.add_development_dependency "json"
  spec.add_development_dependency "uri"
end
