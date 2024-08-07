# -*- encoding: utf-8 -*-
# stub: rb-inotify 0.10.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rb-inotify"
  s.version = "0.10.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Natalie Weizenbaum", "Samuel Williams"]
  s.date = "2019-12-24"
  s.email = ["nex342@gmail.com", "samuel.williams@oriontransfer.co.nz"]
  s.homepage = "https://github.com/guard/rb-inotify"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2")
  s.rubygems_version = "2.5.0"
  s.summary = "A Ruby wrapper for Linux inotify, using FFI"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.6"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<concurrent-ruby>, [">= 0"])
    else
      s.add_dependency(%q<ffi>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, ["~> 3.6"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<concurrent-ruby>, [">= 0"])
    end
  else
    s.add_dependency(%q<ffi>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, ["~> 3.6"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<concurrent-ruby>, [">= 0"])
  end
end
