# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gc_peak/version'

Gem::Specification.new do |spec|
  spec.name          = 'gc_peak'
  spec.version       = GcPeak::VERSION
  spec.authors       = ['Michele Finotto']
  spec.email         = ['info@finotto.org']

  spec.summary       = "Peak into your app's GC"
  spec.description   = "Peak into your app's GC"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
end
