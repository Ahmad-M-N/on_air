# -*- encoding: utf-8 -*-
# stub: aws-sdk-s3 1.138.0 ruby lib

Gem::Specification.new do |s|
  s.name = "aws-sdk-s3"
  s.version = "1.138.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-s3/CHANGELOG.md", "source_code_uri" => "https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-s3" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Amazon Web Services"]
  s.date = "2023-11-21"
  s.description = "Official AWS Ruby gem for Amazon Simple Storage Service (Amazon S3). This gem is part of the AWS SDK for Ruby."
  s.email = ["aws-dr-rubygems@amazon.com"]
  s.homepage = "https://github.com/aws/aws-sdk-ruby"
  s.licenses = ["Apache-2.0"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3")
  s.rubygems_version = "2.5.0"
  s.summary = "AWS SDK for Ruby - Amazon S3"

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<aws-sdk-kms>, ["~> 1"])
      s.add_runtime_dependency(%q<aws-sigv4>, ["~> 1.6"])
      s.add_runtime_dependency(%q<aws-sdk-core>, [">= 3.181.0", "~> 3"])
    else
      s.add_dependency(%q<aws-sdk-kms>, ["~> 1"])
      s.add_dependency(%q<aws-sigv4>, ["~> 1.6"])
      s.add_dependency(%q<aws-sdk-core>, [">= 3.181.0", "~> 3"])
    end
  else
    s.add_dependency(%q<aws-sdk-kms>, ["~> 1"])
    s.add_dependency(%q<aws-sigv4>, ["~> 1.6"])
    s.add_dependency(%q<aws-sdk-core>, [">= 3.181.0", "~> 3"])
  end
end
