# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eu_cookies/version'

Gem::Specification.new do |spec|
  spec.name          = "eu_cookies"
  spec.version       = EuCookies::VERSION
  spec.authors       = ["Alessandro Lepore", "Stjepan Hadjic"]
  spec.email         = ["a.lepore@freegoweb.it"]

  spec.summary       = %q{A Rails solution to the European Cookie Law issue}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/freego/eu_cookies"
  spec.license       = "MIT"
  spec.required_ruby_version = '>= 1.9.3'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "railties", ">= 3.1"
  spec.add_runtime_dependency "sass-rails"
  spec.add_runtime_dependency "js_cookie_rails", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10"
  spec.add_development_dependency "rspec-rails", "~> 3.2"
  spec.add_development_dependency "capybara", "~> 2.4"
  spec.add_development_dependency "combustion", "~> 0.5.3"
  spec.add_development_dependency "actionpack", "~> 4.2"
  spec.add_development_dependency "actionview", "~> 4.2"
  spec.add_development_dependency "sprockets-rails", "~> 2.3"
  spec.add_development_dependency "selenium-webdriver", "~> 2.45"
end
