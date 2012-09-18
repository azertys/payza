$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "payza/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "payza"
  s.version     = Payza::VERSION
  s.authors     = ["Azertys"]
  s.email       = ["spiridon.alin@gmail.com"]
  s.homepage    = "http://ajaxmasters.com"
  s.summary     = "Payza API gem."
  s.description = "A simple gem for the Payza payment network"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.6"
  s.add_dependency "httparty", "~> 0.9.0"

  #s.add_development_dependency "sqlite3"
end
