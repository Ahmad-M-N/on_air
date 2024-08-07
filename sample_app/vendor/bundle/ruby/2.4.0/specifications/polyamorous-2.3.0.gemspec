# -*- encoding: utf-8 -*-
# stub: polyamorous 2.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "polyamorous"
  s.version = "2.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ernie Miller", "Ryan Bigg", "Jon Atack", "Xiang Li"]
  s.date = "2019-08-18"
  s.description = "\n    This is just an extraction from Ransack/Squeel. You probably don't want to use this\n    directly. It extends ActiveRecord's associations to support polymorphic belongs_to\n    associations.\n  "
  s.email = ["ernie@erniemiller.org", "radarlistener@gmail.com", "jonnyatack@gmail.com", "bigxiang@gmail.com"]
  s.homepage = "https://github.com/activerecord-hackery/ransack/tree/master/polyamorous"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.0"
  s.summary = "Loves/is loved by polymorphic belongs_to associations, Ransack, Squeel, MetaSearch..."

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 5.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3"])
      s.add_development_dependency(%q<machinist>, ["~> 1.0.6"])
      s.add_development_dependency(%q<faker>, ["~> 1.6.5"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3.3"])
    else
      s.add_dependency(%q<activerecord>, [">= 5.0"])
      s.add_dependency(%q<rspec>, ["~> 3"])
      s.add_dependency(%q<machinist>, ["~> 1.0.6"])
      s.add_dependency(%q<faker>, ["~> 1.6.5"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3.3"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 5.0"])
    s.add_dependency(%q<rspec>, ["~> 3"])
    s.add_dependency(%q<machinist>, ["~> 1.0.6"])
    s.add_dependency(%q<faker>, ["~> 1.6.5"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3.3"])
  end
end
