$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "firaq/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "firaq"
  s.version     = Firaq::VERSION
  s.authors     = ["Khairul"]
  s.email       = ["kyu.helf@gmail.com"]
  s.homepage    = "https://github.com/kahirul/firaq"
  s.summary     = "Firaq."
  s.description = "Firaq."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "phantomjs", "~> 1.9.8.0"
  s.add_dependency "mini_magick", "~> 4.0.2"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "pry"
end
