# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uptyped/version'

Gem::Specification.new do |spec|
  spec.name          = "uptyped"
  spec.version       = Uptyped::VERSION
  spec.authors       = ["Jeffrey Matthias"]
  spec.email         = ["jeffrey@sendgrid.com"]
  spec.summary       = "Adds tests to enforce that interface is only inherited from superclass unless superclass is Object."
  spec.description   = "Adds tests to enforce that interface is only inherited from superclass unless superclass is Object."
  spec.homepage      = "https://github.com/sendgrid/uptyped"
  spec.license       = "MIT"

  spec.files         = Dir["{lib}/**/*"] + ["Rakefile"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.3"
  spec.add_development_dependency "shoulda-matchers", "~> 2.6"

  spec.add_dependency "rspec", "~> 2.0"
end
