# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'fluent-plugin-file-sprintf'
  spec.version       = '0.0.7'
  spec.authors       = ['Hiroshi Toyama']
  spec.email         = ['toyama0919@gmail.com']
  spec.description   = %q(sprintf output file plugin for Fluentd.)
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/toyama0919/fluent-plugin-file-sprintf/'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'ltsv'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-shell'
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency 'fluentd'
end
