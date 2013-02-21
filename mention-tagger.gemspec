$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mention-tagger/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mention-tagger"
  s.version     = MentionTagger::VERSION
  s.authors     = ["Jordan Rogers-Smith"]
  s.email       = ["jordan.rogers-smith@betapond.com"]
  s.homepage    = "https://github.com/jordanrs"
  s.summary     = "Mention tagger adds facebook like friend tagging for your friends to a textbox."
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"
  s.add_dependency "jquery-rails"
  s.add_dependency 'sass-rails',   '~> 3.2.3'
  s.add_dependency "bookface"
  # s.add_dependency "jquery-rails"

  # s.add_development_dependency "sqlite3"
end
