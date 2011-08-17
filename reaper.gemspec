# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "reaper/version"

Gem::Specification.new do |s|
  s.name        = "reaper"
  s.version     = Reaper::VERSION
  s.authors     = ["Dan Carper"]
  s.email       = ["dcarper@dreamagile.com"]
  s.homepage    = ""
  s.summary     = "Removes files that are not referenced in other text files"
  s.description = "Only images are handled for now. Totally not that battle heardened"

  s.rubyforge_project = "reaper"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  #s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
	s.executables = 'reap'
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "slop"
end
