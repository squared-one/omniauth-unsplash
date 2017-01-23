# coding: utf-8
require File.expand_path('../lib/omniauth/unsplash/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = "omniauth-unsplash"
  s.version       = OmniAuth::Unsplash::VERSION
  s.authors       = ["Jakub Hozak"]
  s.email         = ["jakub.hozak@gmail.com"]

  s.summary       = 'Unsplash OAuth2 Strategy for OmniAuth'
  s.homepage      = 'https://github.com/squared-one/omniauth-unsplash'
  s.license       = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.2'
  s.add_development_dependency "bundler", "~> 1.13"
  s.add_development_dependency "minitest", "~> 5.0"
end
