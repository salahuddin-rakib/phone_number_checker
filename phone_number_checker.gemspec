# frozen_string_literal: true

require_relative "lib/phone_number_checker/version"

Gem::Specification.new do |spec|
  spec.name          = "phone_number_checker"
  spec.version       = PhoneNumberChecker::VERSION
  spec.authors       = ["Salahuddin Rakib"]
  spec.email         = ["salahuddin.rakib.uiu@gmail.com"]

  spec.summary       = "Phone Number Check and Fetch."
  spec.description   = "Check valid phone number and fetch valid phone number."
  spec.homepage      = "https://rubygems.org/gems/phone_number_checker"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
  # Development dependency gem.
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.9"

  # Production dependency gem.
  # spec.add_dependency "bundler", "~> 2.0"
end
