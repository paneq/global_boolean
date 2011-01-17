# -*- encoding: utf-8 -*-
require File.expand_path("../lib/global_boolean/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "global_boolean"
  s.version     = GlobalBoolean::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Robert Pankowecki"]
  s.email       = ["robert.pankowecki@gmail.com", "rpa@gavdi.com"]
  s.homepage    = "http://rubygems.org/gems/global_boolean"
  s.summary     = "Easy parsing of string values to boolean types"
  s.description = "Boolean()"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "global_boolean"

  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
