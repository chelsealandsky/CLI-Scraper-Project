# frozen_string_literal: true

require_relative "lib/cliprojunesco/version"

Gem::Specification.new do |spec|
  spec.name          = "cliprojunesco"
  spec.version       = Cliprojunesco::VERSION
  spec.authors       = ["Chelsea Anne Ashworth  "]
  spec.email         = ["ashworthca@gmail.com"]

  spec.summary       = "CLI Scraping Project "
  spec.description   = "Interactive App that allows use to find US UNESCO sites and learn about them"
  spec.homepage      = "https://github.com/chelsealandsky/CLI-Scraper-Project"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/chelsealandsky/CLI-Scraper-Project"
  spec.metadata["changelog_uri"] = "https://github.com/chelsealandsky/CLI-Scraper-Project"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "nokogiri"
  spec.add_dependency "pry"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
