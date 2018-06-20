$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "loyalty/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "loyalty"
  s.version     = Loyalty::VERSION
  s.authors     = ["Dat Ngo"]
  s.email       = ["ngothiendat@gmail.com"]
  s.homepage    = "http://fsoft.com.vn"
  s.summary     = "Loyalty module with separate VUE, and DB"
  s.description = "Loyalty module with separate VUE, and DB"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"

  s.add_development_dependency "pg"
end
