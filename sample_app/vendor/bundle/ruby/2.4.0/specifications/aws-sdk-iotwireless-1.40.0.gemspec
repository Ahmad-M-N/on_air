# -*- encoding: utf-8 -*-
# stub: aws-sdk-iotwireless 1.40.0 ruby lib

Gem::Specification.new do |s|
  s.name = "aws-sdk-iotwireless"
  s.version = "1.40.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-iotwireless/CHANGELOG.md", "source_code_uri" => "https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-iotwireless" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Amazon Web Services"]
  s.date = "2023-11-03"
  s.description = "Official AWS Ruby gem for AWS IoT Wireless. This gem is part of the AWS SDK for Ruby."
  s.email = ["aws-dr-rubygems@amazon.com"]
  s.homepage = "https://github.com/aws/aws-sdk-ruby"
  s.licenses = ["Apache-2.0"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3")
  s.rubygems_version = "2.5.0"
  s.summary = "AWS SDK for Ruby - AWS IoT Wireless"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<aws-sdk-core>, [">= 3.184.0", "~> 3"])
      s.add_runtime_dependency(%q<aws-sigv4>, ["~> 1.1"])
    else
      s.add_dependency(%q<aws-sdk-core>, [">= 3.184.0", "~> 3"])
      s.add_dependency(%q<aws-sigv4>, ["~> 1.1"])
    end
  else
    s.add_dependency(%q<aws-sdk-core>, [">= 3.184.0", "~> 3"])
    s.add_dependency(%q<aws-sigv4>, ["~> 1.1"])
  end
end
