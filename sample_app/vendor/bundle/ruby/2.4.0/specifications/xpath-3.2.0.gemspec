# -*- encoding: utf-8 -*-
# stub: xpath 3.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "xpath"
  s.version = "3.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jonas Nicklas"]
  s.cert_chain = ["gem-public_cert.pem"]
  s.date = "2018-10-15"
  s.description = "XPath is a Ruby DSL for generating XPath expressions"
  s.email = ["jonas.nicklas@gmail.com"]
  s.homepage = "https://github.com/teamcapybara/xpath"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3")
  s.rubygems_version = "2.5.0"
  s.summary = "Generate XPath expressions from Ruby"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.8"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<yard>, [">= 0.5.8"])
    else
      s.add_dependency(%q<nokogiri>, ["~> 1.8"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<yard>, [">= 0.5.8"])
    end
  else
    s.add_dependency(%q<nokogiri>, ["~> 1.8"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<yard>, [">= 0.5.8"])
  end
end
