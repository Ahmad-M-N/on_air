# -*- encoding: utf-8 -*-
# stub: bindex 0.8.1 ruby lib
# stub: ext/skiptrace/extconf.rb

Gem::Specification.new do |s|
  s.name = "bindex"
  s.version = "0.8.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Genadi Samokovarov"]
  s.date = "2019-07-10"
  s.email = ["gsamokovarov@gmail.com"]
  s.extensions = ["ext/skiptrace/extconf.rb"]
  s.files = ["ext/skiptrace/extconf.rb"]
  s.homepage = "https://github.com/gsamokovarov/bindex"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.5.0"
  s.summary = "Bindings for your Ruby exceptions"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, ["~> 5.4"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rake-compiler>, [">= 0"])
    else
      s.add_dependency(%q<minitest>, ["~> 5.4"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rake-compiler>, [">= 0"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 5.4"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rake-compiler>, [">= 0"])
  end
end
