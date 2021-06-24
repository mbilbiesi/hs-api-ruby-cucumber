# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require './lib/hs/api/version'

Gem::Specification.new do |s|
  s.name        = "cucumber-api"
  s.version     = Hs::Api::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mazen Bilbeisi"]
  s.email       = ["mazen.bilbisi.ext@hungerstation.com"]
  s.homepage    = "http://www.hungerstation.com"
  s.summary     = %q{API validator with Cucumber}
  s.description = %q{cucumber-api allows API JSON response validation and verification in BDD style.}
  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
  s.required_ruby_version = '>= 2.3.0'
  s.license     = 'Apache-2.0'

  s.add_dependency('addressable', '2.5')
  s.add_dependency('cucumber', '6.1')
  s.add_dependency('jsonpath', '~> 0.8')
  s.add_dependency('rest-client', '~> 2.0.2')
  s.add_dependency('json-schema', '~> 2.8.0')
end

