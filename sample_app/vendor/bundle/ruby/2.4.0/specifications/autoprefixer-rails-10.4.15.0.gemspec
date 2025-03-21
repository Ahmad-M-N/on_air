# -*- encoding: utf-8 -*-
# stub: autoprefixer-rails 10.4.15.0 ruby lib

Gem::Specification.new do |s|
  s.name = "autoprefixer-rails"
  s.version = "10.4.15.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/ai/autoprefixer-rails/issues", "changelog_uri" => "https://github.com/ai/autoprefixer-rails/blob/master/CHANGELOG.md", "source_code_uri" => "https://github.com/ai/autoprefixer-rails" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Andrey Sitnik"]
  s.date = "2023-09-06"
  s.email = "andrey@sitnik.ru"
  s.extra_rdoc_files = ["README.md", "LICENSE", "CHANGELOG.md"]
  s.files = ["CHANGELOG.md", "LICENSE", "README.md"]
  s.homepage = "https://github.com/ai/autoprefixer-rails"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4")
  s.rubygems_version = "2.5.0"
  s.summary = "Parse CSS and add vendor prefixes to CSS rules using values from the Can I Use website."

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<execjs>, ["~> 2"])
      s.add_development_dependency(%q<rails>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.85.1"])
      s.add_development_dependency(%q<rubocop-packaging>, ["~> 0.1.1"])
      s.add_development_dependency(%q<standard>, [">= 0"])
    else
      s.add_dependency(%q<execjs>, ["~> 2"])
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<rubocop>, ["~> 0.85.1"])
      s.add_dependency(%q<rubocop-packaging>, ["~> 0.1.1"])
      s.add_dependency(%q<standard>, [">= 0"])
    end
  else
    s.add_dependency(%q<execjs>, ["~> 2"])
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<rubocop>, ["~> 0.85.1"])
    s.add_dependency(%q<rubocop-packaging>, ["~> 0.1.1"])
    s.add_dependency(%q<standard>, [">= 0"])
  end
end
