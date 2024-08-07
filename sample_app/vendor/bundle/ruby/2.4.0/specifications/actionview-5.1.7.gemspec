# -*- encoding: utf-8 -*-
# stub: actionview 5.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "actionview"
  s.version = "5.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/rails/rails/blob/v5.1.7/actionview/CHANGELOG.md", "source_code_uri" => "https://github.com/rails/rails/tree/v5.1.7/actionview" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["David Heinemeier Hansson"]
  s.date = "2019-03-28"
  s.description = "Simple, battle-tested conventions and helpers for building web pages."
  s.email = "david@loudthinking.com"
  s.homepage = "http://rubyonrails.org"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2")
  s.requirements = ["none"]
  s.rubygems_version = "2.5.0"
  s.summary = "Rendering framework putting the V in MVC (part of Rails)."

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["= 5.1.7"])
      s.add_runtime_dependency(%q<builder>, ["~> 3.1"])
      s.add_runtime_dependency(%q<erubi>, ["~> 1.4"])
      s.add_runtime_dependency(%q<rails-html-sanitizer>, [">= 1.0.3", "~> 1.0"])
      s.add_runtime_dependency(%q<rails-dom-testing>, ["~> 2.0"])
      s.add_development_dependency(%q<actionpack>, ["= 5.1.7"])
      s.add_development_dependency(%q<activemodel>, ["= 5.1.7"])
    else
      s.add_dependency(%q<activesupport>, ["= 5.1.7"])
      s.add_dependency(%q<builder>, ["~> 3.1"])
      s.add_dependency(%q<erubi>, ["~> 1.4"])
      s.add_dependency(%q<rails-html-sanitizer>, [">= 1.0.3", "~> 1.0"])
      s.add_dependency(%q<rails-dom-testing>, ["~> 2.0"])
      s.add_dependency(%q<actionpack>, ["= 5.1.7"])
      s.add_dependency(%q<activemodel>, ["= 5.1.7"])
    end
  else
    s.add_dependency(%q<activesupport>, ["= 5.1.7"])
    s.add_dependency(%q<builder>, ["~> 3.1"])
    s.add_dependency(%q<erubi>, ["~> 1.4"])
    s.add_dependency(%q<rails-html-sanitizer>, [">= 1.0.3", "~> 1.0"])
    s.add_dependency(%q<rails-dom-testing>, ["~> 2.0"])
    s.add_dependency(%q<actionpack>, ["= 5.1.7"])
    s.add_dependency(%q<activemodel>, ["= 5.1.7"])
  end
end
