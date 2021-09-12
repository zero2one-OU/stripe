require_relative "lib/aiia/version"

Gem::Specification.new do |spec|
  spec.name        = "aiia"
  spec.version     = Aiia::VERSION
  spec.authors     = ["delaney burke"]
  spec.email       = ["delaney@zero2one.ee"]
	spec.summary     = "Aiia integration endpoint"
	spec.metadata["allowed_push_host"] = "http://gems.zero2one.ee/private"
  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  spec.add_dependency "rails", "~> 6.1.4", ">= 6.1.4.1"
end
