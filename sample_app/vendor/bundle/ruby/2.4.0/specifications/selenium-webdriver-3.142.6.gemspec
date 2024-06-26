# -*- encoding: utf-8 -*-
# stub: selenium-webdriver 3.142.6 ruby lib

Gem::Specification.new do |s|
  s.name = "selenium-webdriver"
  s.version = "3.142.6"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/SeleniumHQ/selenium/blob/master/rb/CHANGES", "source_code_uri" => "https://github.com/SeleniumHQ/selenium/tree/master/rb" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Alex Rodionov", "Titus Fortner", "Thomas Walpole"]
  s.date = "2019-10-04"
  s.description = "WebDriver is a tool for writing automated tests of websites. It aims to mimic the behaviour of a real user, and as such interacts with the HTML of the application."
  s.email = ["p0deje@gmail.com", "titusfortner@gmail.com", "twalpole@gmail.com"]
  s.homepage = "https://github.com/SeleniumHQ/selenium"
  s.licenses = ["Apache-2.0"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3")
  s.rubygems_version = "2.5.0"
  s.summary = "The next generation developer focused tool for automated testing of webapps"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<childprocess>, ["< 4.0", ">= 0.5"])
      s.add_runtime_dependency(%q<rubyzip>, [">= 1.2.2"])
      s.add_development_dependency(%q<ffi>, [">= 0"])
      s.add_development_dependency(%q<rack>, ["~> 2.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.67.0"])
      s.add_development_dependency(%q<rubocop-performance>, [">= 0"])
      s.add_development_dependency(%q<rubocop-rspec>, [">= 0"])
      s.add_development_dependency(%q<webmock>, ["~> 3.5"])
      s.add_development_dependency(%q<yard>, ["~> 0.9.11"])
    else
      s.add_dependency(%q<childprocess>, ["< 4.0", ">= 0.5"])
      s.add_dependency(%q<rubyzip>, [">= 1.2.2"])
      s.add_dependency(%q<ffi>, [">= 0"])
      s.add_dependency(%q<rack>, ["~> 2.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<rubocop>, ["~> 0.67.0"])
      s.add_dependency(%q<rubocop-performance>, [">= 0"])
      s.add_dependency(%q<rubocop-rspec>, [">= 0"])
      s.add_dependency(%q<webmock>, ["~> 3.5"])
      s.add_dependency(%q<yard>, ["~> 0.9.11"])
    end
  else
    s.add_dependency(%q<childprocess>, ["< 4.0", ">= 0.5"])
    s.add_dependency(%q<rubyzip>, [">= 1.2.2"])
    s.add_dependency(%q<ffi>, [">= 0"])
    s.add_dependency(%q<rack>, ["~> 2.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<rubocop>, ["~> 0.67.0"])
    s.add_dependency(%q<rubocop-performance>, [">= 0"])
    s.add_dependency(%q<rubocop-rspec>, [">= 0"])
    s.add_dependency(%q<webmock>, ["~> 3.5"])
    s.add_dependency(%q<yard>, ["~> 0.9.11"])
  end
end
