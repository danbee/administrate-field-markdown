$:.push File.expand_path("../lib", __FILE__)

require "administrate/field/markdown"

Gem::Specification.new do |gem|
  gem.name = "administrate-field-markdown"
  gem.version = Administrate::Field::Markdown::VERSION
  gem.authors = ["Dan Barber"]
  gem.email = ["hello@danbarber.me"]
  gem.homepage = "https://github.com/danbee/administrate_field_markdown"
  gem.summary = "Markdown field plugin for Administrate"
  gem.description = gem.summary
  gem.license = "MIT"

  gem.require_paths = ["lib"]
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.add_dependency "administrate", ">= 0.2.0.rc1", "< 0.3.0"
  gem.add_dependency "rails", "~> 4.2"
  gem.add_dependency "kramdown", "~> 1.10"
end
