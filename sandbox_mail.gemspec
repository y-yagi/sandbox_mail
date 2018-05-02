$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "sandbox_mail/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sandbox_mail"
  s.version     = SandboxMail::VERSION
  s.authors     = ["Yuji Yaginuma"]
  s.email       = ["yuuji.yaginuma@gmail.com"]
  s.summary     = "Don't send mail in sandbox console."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0"

  s.add_development_dependency "sqlite3"
end
