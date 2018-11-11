
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gurtz_copyright/version"

Gem::Specification.new do |spec|
  spec.name          = "gurtz_copyright"
  spec.version       = GurtzCopyright::VERSION
  spec.authors       = ["Brian Gurtz"]
  spec.email         = ["bgurtz@gmail.com"]

  spec.summary       = %q{Copyright for pages}
  spec.description   = %q{Creats copyrights for pages with <% copyright %> with current year, name and all rights reserved}
  spec.homepage      = "HTTP://www.BrianGurtz.com"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end