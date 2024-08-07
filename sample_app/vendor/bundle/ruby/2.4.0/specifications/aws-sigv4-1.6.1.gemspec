# -*- encoding: utf-8 -*-
# stub: aws-sigv4 1.6.1 ruby lib

Gem::Specification.new do |s|
  s.name = "aws-sigv4"
  s.version = "1.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sigv4/CHANGELOG.md", "source_code_uri" => "https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sigv4" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Amazon Web Services"]
  s.date = "2023-10-25"
  s.description = "Amazon Web Services Signature Version 4 signing library. Generates sigv4 signature for HTTP requests."
  s.homepage = "https://github.com/aws/aws-sdk-ruby"
  s.licenses = ["Apache-2.0"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3")
  s.rubygems_version = "2.5.0"
  s.summary = "AWS Signature Version 4 library."

  s.installed_by_version = "2.5.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<aws-eventstream>, [">= 1.0.2", "~> 1"])
    else
      s.add_dependency(%q<aws-eventstream>, [">= 1.0.2", "~> 1"])
    end
  else
    s.add_dependency(%q<aws-eventstream>, [">= 1.0.2", "~> 1"])
  end
end
