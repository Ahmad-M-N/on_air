# -*- encoding: utf-8 -*-
# stub: terminal-table 3.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "terminal-table"
  s.version = "3.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["TJ Holowaychuk", "Scott J. Goldman"]
  s.date = "2021-09-19"
  s.email = ["tj@vision-media.ca"]
  s.homepage = "https://github.com/tj/terminal-table"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.0"
  s.summary = "Simple, feature rich ascii table generation library"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 2"])
      s.add_development_dependency(%q<rake>, ["~> 13.0"])
      s.add_development_dependency(%q<rspec>, [">= 3.0"])
      s.add_development_dependency(%q<term-ansicolor>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_runtime_dependency(%q<unicode-display_width>, ["< 3", ">= 1.1.1"])
    else
      s.add_dependency(%q<bundler>, ["~> 2"])
      s.add_dependency(%q<rake>, ["~> 13.0"])
      s.add_dependency(%q<rspec>, [">= 3.0"])
      s.add_dependency(%q<term-ansicolor>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<unicode-display_width>, ["< 3", ">= 1.1.1"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 2"])
    s.add_dependency(%q<rake>, ["~> 13.0"])
    s.add_dependency(%q<rspec>, [">= 3.0"])
    s.add_dependency(%q<term-ansicolor>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<unicode-display_width>, ["< 3", ">= 1.1.1"])
  end
end
