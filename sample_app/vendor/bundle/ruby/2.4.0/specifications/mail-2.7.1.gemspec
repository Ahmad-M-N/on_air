# -*- encoding: utf-8 -*-
# stub: mail 2.7.1 ruby lib

Gem::Specification.new do |s|
  s.name = "mail"
  s.version = "2.7.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Mikel Lindsaar"]
  s.date = "2018-10-13"
  s.description = "A really Ruby Mail handler."
  s.email = "raasdnil@gmail.com"
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md"]
  s.homepage = "https://github.com/mikel/mail"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--exclude", "lib/mail/values/unicode_tables.dat"]
  s.rubygems_version = "2.5.0"
  s.summary = "Mail provides a nice Ruby DSL for making, sending and reading emails."

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mini_mime>, [">= 0.1.1"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.3"])
      s.add_development_dependency(%q<rake>, ["> 0.8.7"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<rufo>, [">= 0"])
    else
      s.add_dependency(%q<mini_mime>, [">= 0.1.1"])
      s.add_dependency(%q<bundler>, [">= 1.0.3"])
      s.add_dependency(%q<rake>, ["> 0.8.7"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<rufo>, [">= 0"])
    end
  else
    s.add_dependency(%q<mini_mime>, [">= 0.1.1"])
    s.add_dependency(%q<bundler>, [">= 1.0.3"])
    s.add_dependency(%q<rake>, ["> 0.8.7"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<rufo>, [">= 0"])
  end
end
