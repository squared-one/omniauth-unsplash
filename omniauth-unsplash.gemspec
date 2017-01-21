# coding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth/unsplash/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-unsplash"
  spec.version       = Omniauth::Unsplash::VERSION
  spec.authors       = ["Jakub Hozak"]
  spec.email         = ["jakub.hozak@gmail.com"]

  spec.summary       = 'Unsplash OAuth2 Strategy for OmniAuth'
  spec.homepage      = 'https://github.com/squared-one/omniauth-unsplash'
  spec.license       = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.2'
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "minitest", "~> 5.0"
end
