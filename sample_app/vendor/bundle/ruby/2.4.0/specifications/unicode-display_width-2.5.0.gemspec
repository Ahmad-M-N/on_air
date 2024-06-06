# -*- encoding: utf-8 -*-
# stub: unicode-display_width 2.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "unicode-display_width"
  s.version = "2.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/janlelis/unicode-display_width/issues", "changelog_uri" => "https://github.com/janlelis/unicode-display_width/blob/main/CHANGELOG.md", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/janlelis/unicode-display_width" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Jan Lelis"]
  s.date = "2023-10-01"
  s.description = "[Unicode 15.1.0] Determines the monospace display width of a string using EastAsianWidth.txt, Unicode general category, and other data."
  s.email = ["hi@ruby.consulting"]
  s.extra_rdoc_files = ["README.md", "MIT-LICENSE.txt", "CHANGELOG.md"]
  s.files = ["CHANGELOG.md", "MIT-LICENSE.txt", "README.md"]
  s.homepage = "https://github.com/janlelis/unicode-display_width"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0")
  s.rubygems_version = "2.5.0"
  s.summary = "Determines the monospace display width of a string in Ruby."

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 3.4"])
      s.add_development_dependency(%q<rake>, ["~> 13.0"])
    else
      s.add_dependency(%q<rspec>, ["~> 3.4"])
      s.add_dependency(%q<rake>, ["~> 13.0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 3.4"])
    s.add_dependency(%q<rake>, ["~> 13.0"])
  end
end
