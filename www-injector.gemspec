# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "www-injector/version"

Gem::Specification.new do |s|
  s.name        = "www-injector"
  s.version     = Www::Injector::VERSION
  s.authors     = ["Stefan Luptak"]
  s.email       = ["stefan.luptak@smartmedia.cz"]
  s.homepage    = "https://github.com/SmartMedia/www-injector"
  s.summary     = %q{Rack middleware to force using www in URL.}
  s.description = %q{Just insert it into your Gemfile and every request without www will be redirected with 301 (Moved Permanently) to a www version.}

  s.rubyforge_project = "www-injector"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
