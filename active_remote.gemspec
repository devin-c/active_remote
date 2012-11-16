# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "active_remote/version"

Gem::Specification.new do |s|
  s.name          = "active_remote"
  s.version       = ActiveRemote::VERSION
  s.authors       = ["Adam Hutchison"]
  s.email         = ["liveh2o@gmail.com"]
  s.homepage      = "https://github.com/liveh2o/active_remote"
  s.summary       = %q{Active Record for your platform}
  s.description   = %q{Active Remote provides Active Record-like object-relational mapping over RPC. It was written for use with Google Protocol Buffers, but could be extended to use any RPC data format.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  ##
  # Dependencies
  #
  s.add_dependency "active_attr"
  s.add_dependency "protobuf", ">= 2.0"

  ##
  # Development Dependencies
  #
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-pride"
  s.add_development_dependency "pry-nav"
  s.add_development_dependency "protobuf-rspec"
  s.add_development_dependency "simplecov"
end
