# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'oxford_learners_dictionaries/version'

Gem::Specification.new do |spec|
  spec.name          = "oxford_learners_dictionaries"
  spec.version       = OxfordLearnersDictionaries::VERSION
  spec.authors       = ["Felipe Pelizaro Gentil"]
  spec.email         = ["cdigentil@gmail.com"]
  spec.summary       = %q{Oxford Learner's Dictionaries API}
  spec.description   = %q{Implementation of a Oxford Learner's Dictionaries API, 
                      it parses the website and formats the meaning of the word}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",   "~> 1.7"
  spec.add_development_dependency "rake",      "~> 10.0"
  spec.add_development_dependency "simplecov", "~> 0.9.0"
  spec.add_development_dependency "rspec",     "~> 3.0.0"
  spec.add_development_dependency "webmock",   "~> 1.19"
  spec.add_development_dependency "vcr",       "~> 2.9.3"

  spec.add_dependency "nokogiri", "~> 1.6.3"
end
