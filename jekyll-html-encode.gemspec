lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/html-encode/version'

Gem::Specification.new do |s|
    s.name          = 'jekyll-html-encode'
    s.version       = Jekyll::HTMLEncode::VERSION
    s.summary       = 'Encode strings to HTML escape characters'
    s.description   = 'Encode strings to HTML escape characters'
    s.authors       = ['Oliver Cordingley']
    s.email         = 'cordempire@gmail.com'
    s.homepage      = 'https://github.com/OliverCordingl1/jekyll-html-encode'
    s.license       = 'MIT'

    s.files         = [*Dir["lib/**/*.rb"]]
    s.test_files    = [*Dir["spec/*.rb"]]
    s.require_paths = ["lib"]

    s.required_ruby_version = '>= 1.9.3'
    s.add_development_dependency 'liquid'
    s.add_development_dependency "rspec"
    s.add_development_dependency "bundler"
end