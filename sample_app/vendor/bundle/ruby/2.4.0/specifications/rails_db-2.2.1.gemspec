# -*- encoding: utf-8 -*-
# stub: rails_db 2.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_db"
  s.version = "2.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Igor Kasyanchuk"]
  s.date = "2019-11-19"
  s.description = "Quick way to inspect your Rails database, see content of tables, filter, export them to CSV, Excel, EXPLAIN SQL and run SQL queries."
  s.email = ["igorkasyanchuk@gmail.com"]
  s.executables = ["railsdb", "rails_db", "runsql"]
  s.files = ["bin/rails_db", "bin/railsdb", "bin/runsql"]
  s.homepage = "https://github.com/igorkasyanchuk/rails_db"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.0"
  s.summary = "Inspect your Rails DB (table content viewer, execute sql queries, export & import data"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 5.0.0"])
      s.add_runtime_dependency(%q<terminal-table>, [">= 0"])
      s.add_runtime_dependency(%q<simple_form>, [">= 5.0.1"])
      s.add_runtime_dependency(%q<activerecord>, [">= 0"])
      s.add_runtime_dependency(%q<ransack>, [">= 0"])
      s.add_runtime_dependency(%q<kaminari>, [">= 0"])
      s.add_development_dependency(%q<launchy>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3.6"])
      s.add_development_dependency(%q<mysql2>, ["<= 0.3.20"])
      s.add_development_dependency(%q<pg>, [">= 0"])
      s.add_development_dependency(%q<axlsx_rails>, [">= 0"])
      s.add_development_dependency(%q<will_paginate>, ["~> 3.0.6"])
      s.add_development_dependency(%q<mime-types>, ["< 3.0"])
      s.add_development_dependency(%q<paranoia>, [">= 0"])
      s.add_development_dependency(%q<pry-rails>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 5.0.0"])
      s.add_dependency(%q<terminal-table>, [">= 0"])
      s.add_dependency(%q<simple_form>, [">= 5.0.1"])
      s.add_dependency(%q<activerecord>, [">= 0"])
      s.add_dependency(%q<ransack>, [">= 0"])
      s.add_dependency(%q<kaminari>, [">= 0"])
      s.add_dependency(%q<launchy>, [">= 0"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3.6"])
      s.add_dependency(%q<mysql2>, ["<= 0.3.20"])
      s.add_dependency(%q<pg>, [">= 0"])
      s.add_dependency(%q<axlsx_rails>, [">= 0"])
      s.add_dependency(%q<will_paginate>, ["~> 3.0.6"])
      s.add_dependency(%q<mime-types>, ["< 3.0"])
      s.add_dependency(%q<paranoia>, [">= 0"])
      s.add_dependency(%q<pry-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 5.0.0"])
    s.add_dependency(%q<terminal-table>, [">= 0"])
    s.add_dependency(%q<simple_form>, [">= 5.0.1"])
    s.add_dependency(%q<activerecord>, [">= 0"])
    s.add_dependency(%q<ransack>, [">= 0"])
    s.add_dependency(%q<kaminari>, [">= 0"])
    s.add_dependency(%q<launchy>, [">= 0"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3.6"])
    s.add_dependency(%q<mysql2>, ["<= 0.3.20"])
    s.add_dependency(%q<pg>, [">= 0"])
    s.add_dependency(%q<axlsx_rails>, [">= 0"])
    s.add_dependency(%q<will_paginate>, ["~> 3.0.6"])
    s.add_dependency(%q<mime-types>, ["< 3.0"])
    s.add_dependency(%q<paranoia>, [">= 0"])
    s.add_dependency(%q<pry-rails>, [">= 0"])
  end
end
