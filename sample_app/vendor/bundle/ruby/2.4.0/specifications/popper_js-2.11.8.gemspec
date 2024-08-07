# -*- encoding: utf-8 -*-
# stub: popper_js 2.11.8 ruby lib

Gem::Specification.new do |s|
  s.name = "popper_js"
  s.version = "2.11.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Gleb Mazovetskiy"]
  s.bindir = "exe"
  s.date = "2023-08-13"
  s.description = "Works with Rails out of the box."
  s.email = ["glex.spb@gmail.com"]
  s.homepage = "https://github.com/glebm/popper_js-rubygem"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.0"
  s.summary = "Popper.js assets as a Ruby gem. https://popper.js.org/"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 2.0"])
      s.add_development_dependency(%q<rake>, ["~> 13.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<rubocop>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 2.0"])
      s.add_dependency(%q<rake>, ["~> 13.0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<rubocop>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 2.0"])
    s.add_dependency(%q<rake>, ["~> 13.0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<rubocop>, [">= 0"])
  end
end
