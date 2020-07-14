require_relative "lib/remain_timer/version"

Gem::Specification.new do |spec|
  spec.name = "remain_timer"
  spec.version = RemainTimer::VERSION
  spec.licenses = %w[Zlib]
  spec.authors = %w[Narazaka]
  spec.email = %w[info@narazaka.net]

  spec.summary = "A small tool for estimating and displaying the remaining time of batch jobs/tasks"
  spec.homepage = "https://github.com/Narazaka/remain_timer"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Narazaka/remain_timer"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files =
    Dir.chdir(File.expand_path("..", __FILE__)) do
      `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
    end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w[lib]

  spec.add_dependency "chronic_duration", "~> 0.10"
end
