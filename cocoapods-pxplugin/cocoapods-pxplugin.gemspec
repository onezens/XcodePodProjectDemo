# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-pxplugin/gem_version.rb'
require_relative 'lib/cocoapods-pxplugin.rb'
Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-pxplugin'
  spec.version       = CocoapodsPxplugin::VERSION
  spec.authors       = ['onezens']
  spec.email         = ['mail@onezen.cc']
  spec.description   = %q{A short description of cocoapods-pxplugin.}
  spec.summary       = %q{A longer description of cocoapods-pxplugin.}
  spec.homepage      = 'https://github.com/EXAMPLE/cocoapods-pxplugin'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  puts "--> files: #{spec.files}"
end
