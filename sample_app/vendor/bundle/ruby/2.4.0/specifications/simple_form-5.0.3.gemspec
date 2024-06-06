# -*- encoding: utf-8 -*-
# stub: simple_form 5.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "simple_form"
  s.version = "5.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jos\u00E9 Valim", "Carlos Ant\u00F4nio", "Rafael Fran\u00E7a"]
  s.date = "2020-09-30"
  s.description = "Forms made easy!"
  s.email = "heartcombo@googlegroups.com"
  s.homepage = "https://github.com/heartcombo/simple_form"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  s.rubygems_version = "2.5.0"
  s.summary = "Forms made easy!"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>, [">= 5.0"])
      s.add_runtime_dependency(%q<actionpack>, [">= 5.0"])
    else
      s.add_dependency(%q<activemodel>, [">= 5.0"])
      s.add_dependency(%q<actionpack>, [">= 5.0"])
    end
  else
    s.add_dependency(%q<activemodel>, [">= 5.0"])
    s.add_dependency(%q<actionpack>, [">= 5.0"])
  end
end
