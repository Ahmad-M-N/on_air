# -*- encoding: utf-8 -*-
# stub: method_source 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "method_source"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["John Mair (banisterfiend)"]
  s.date = "2020-03-19"
  s.description = "retrieve the sourcecode for a method"
  s.email = "jrmair@gmail.com"
  s.homepage = "http://banisterfiend.wordpress.com"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.0"
  s.summary = "retrieve the sourcecode for a method"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 3.6"])
      s.add_development_dependency(%q<rake>, ["~> 0.9"])
    else
      s.add_dependency(%q<rspec>, ["~> 3.6"])
      s.add_dependency(%q<rake>, ["~> 0.9"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 3.6"])
    s.add_dependency(%q<rake>, ["~> 0.9"])
  end
end
