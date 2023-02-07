# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'persistent-cache/version'

Gem::Specification.new do |spec|
  spec.name          = "persistent-cache-storage-ram"
  spec.version       = Persistent::Storage::Ram::VERSION
  spec.authors       = ["Ernst Van Graan", "xneelo (Pty) Ltd"]
  spec.email         = ["ernst.vangraan@gmail.com"]

  spec.summary       = %q{This gem provides a RAM storage back-end to Persistent::Cache}
  spec.description   = %q{This gem provides a RAM storage back-end to Persistent::Cache}
  spec.homepage      = "https://github.com/xneelo/persistent-cache-storage-ram"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "simplecov-lcov"
  spec.add_development_dependency 'byebug'
  spec.add_dependency "persistent-cache-storage-api"
  spec.add_dependency "eh"
end
