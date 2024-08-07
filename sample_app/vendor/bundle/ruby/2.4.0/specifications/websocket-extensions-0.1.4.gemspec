# -*- encoding: utf-8 -*-
# stub: websocket-extensions 0.1.4 ruby lib

Gem::Specification.new do |s|
  s.name = "websocket-extensions"
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["James Coglan"]
  s.date = "2019-06-10"
  s.email = "jcoglan@gmail.com"
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md"]
  s.homepage = "https://github.com/faye/websocket-extensions-ruby"
  s.licenses = ["Apache-2.0"]
  s.rdoc_options = ["--main", "README.md", "--markup", "markdown"]
  s.rubygems_version = "2.5.0"
  s.summary = "Generic extension manager for WebSocket connections"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
