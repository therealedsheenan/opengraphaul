# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'opengraphaul/version'

Gem::Specification.new do |spec|
  spec.name          = "opengraphaul"
  spec.version       = Opengraphaul::VERSION
  spec.authors       = ["Sheenan Tenepre"]
  spec.email         = ["sheenantenepre@gmail.com"]

  spec.summary       = %q{opengraphaul is a library for parsing open graph protocol.}
  spec.description   = %q{opengraphaul is a library for parsing open graph protocol. This uses nokogiri to parse the data from a specific URL.}
  spec.homepage      = "https://github.com/therealedsheenan/opengraphaul"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
