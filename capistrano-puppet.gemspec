# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "capistrano-puppet/version"

Gem::Specification.new do |s|
  s.name        = "capistrano-puppet"
  s.version     = CapistranoPuppet::VERSION
  s.authors     = ["Gareth Rushgrove"]
  s.email       = ["gareth@morethanseven.net"]
  s.homepage    = ""
  s.summary     = %q{"Use puppet to provide hosts for capistrano"}
  s.description = %q{"Connects to the web-puppet webservice and allows puppet hosts and classes to be used to determine hosts for capistrano"}

  s.rubyforge_project = "capistrano-puppet"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "capistrano"
end
