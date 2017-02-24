# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sensitive_text_filter/version'

Gem::Specification.new do |spec|
  spec.name          = "sensitive_text_filter"
  spec.version       = SensitiveTextFilter::VERSION
  spec.authors       = ["C. Gerardo Kobluk"]
  spec.email         = ["dblackbeer@gmail.com"]
  spec.description   = %q{Sensitive Text Filter is a Ruby gem to detect and optionally filter sensitive data.}
  spec.summary       = %q{Sensitive Text Filter is a Ruby gem to detect and optionally filter sensitive data.}
  spec.homepage      = "http://github.com/gkobluk/sensitive_text_filter"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
