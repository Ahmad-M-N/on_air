# -*- encoding: utf-8 -*-
# stub: aws-sdk-core 3.187.1 ruby lib

Gem::Specification.new do |s|
  s.name = "aws-sdk-core"
  s.version = "3.187.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-core/CHANGELOG.md", "source_code_uri" => "https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-core" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Amazon Web Services"]
  s.date = "2023-11-20"
  s.description = "Provides API clients for AWS. This gem is part of the official AWS SDK for Ruby."
  s.homepage = "https://github.com/aws/aws-sdk-ruby"
  s.licenses = ["Apache-2.0"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3")
  s.rubygems_version = "2.5.0"
  s.summary = "AWS SDK for Ruby - Core"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jmespath>, [">= 1.6.1", "~> 1"])
      s.add_runtime_dependency(%q<aws-partitions>, [">= 1.651.0", "~> 1"])
      s.add_runtime_dependency(%q<aws-sigv4>, ["~> 1.5"])
      s.add_runtime_dependency(%q<aws-eventstream>, [">= 1.0.2", "~> 1"])
    else
      s.add_dependency(%q<jmespath>, [">= 1.6.1", "~> 1"])
      s.add_dependency(%q<aws-partitions>, [">= 1.651.0", "~> 1"])
      s.add_dependency(%q<aws-sigv4>, ["~> 1.5"])
      s.add_dependency(%q<aws-eventstream>, [">= 1.0.2", "~> 1"])
    end
  else
    s.add_dependency(%q<jmespath>, [">= 1.6.1", "~> 1"])
    s.add_dependency(%q<aws-partitions>, [">= 1.651.0", "~> 1"])
    s.add_dependency(%q<aws-sigv4>, ["~> 1.5"])
    s.add_dependency(%q<aws-eventstream>, [">= 1.0.2", "~> 1"])
  end
end
