# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'directed_graph/version'
Gem::Specification.new do |spec|
  spec.name          = "directed-graph"
  spec.version       = DirectedGraph::VERSION
  spec.authors       = ["Jatin Naik"]
  spec.email         = ["jsnaik@gmail.com"]
  spec.description   = %q{A generic library to manage and process directed graphs.}
  spec.summary       = %q{A generic library to manage and process directed graphs.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
end
