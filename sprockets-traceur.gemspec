# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sprockets/traceur/version'

Gem::Specification.new do |spec|
  spec.name          = "sprockets-traceur"
  spec.version       = Sprockets::Traceur::VERSION
  spec.authors       = ["Adam Pohorecki"]
  spec.email         = ["adam@pohorecki.pl"]
  spec.summary       = %q{Sprockets plugin for Google Traceur.}
  spec.description   = %q{Transpile ES6 files with Google Traceur.}
  spec.homepage      = "https://github.com/gunpowderlabs/sprockets-traceur"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sprockets", "~> 2"
  spec.add_dependency "traceur-rb", ">= 0.0.2"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "capybara-webkit"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "sinatra"
  spec.add_development_dependency "rails", "~> 4.1"
end
