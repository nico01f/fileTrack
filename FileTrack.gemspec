# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fileTrack/version'

Gem::Specification.new do |spec|
  spec.name          = "fileTrack"
  spec.version       = FileTrack::VERSION
  spec.authors       = ["Nico Fuenzalida"]
  spec.email         = ["nico01f@gmail.com"]

  spec.summary       = 'Let me track your files. Easy!'
  spec.description   = "CLI for track files on entire FS"
  spec.homepage      = "http://github.com/nico01f/filetrack"
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

  spec.add_runtime_dependency "sequel", "~> 4.43.0"
  spec.add_runtime_dependency 'sqlite3', '~> 1.3', '>= 1.3.13'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "pry", "~> 0.10"



end
