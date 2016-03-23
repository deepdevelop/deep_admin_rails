# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deep_admin/version'

Gem::Specification.new do |spec|
  spec.name          = "deep_admin"
  spec.version       = DeepAdmin::VERSION
  spec.authors       = ["greatghoul"]
  spec.email         = ["greatghoul@gmail.com"]

  spec.summary       = "DeepDevelop site admin toolkit for rails."
  spec.description   = "DeepDevelop site admin toolkit for rails."
  spec.homepage      = "https://github.com/deepdevelop/deep_admin_rails"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
