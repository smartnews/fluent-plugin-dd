# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = 'fluent-plugin-dd'
  spec.version       = '0.1.7'
  spec.authors       = ['Genki Sugawara']
  spec.email         = ['sugawara@cookpad.com']
  spec.description   = %q{Output plugin for Datadog}
  spec.summary       = %q{Output plugin for Datadog}
  spec.homepage      = 'https://github.com/winebarrel/fluent-plugin-dd'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'fluentd', [">= 0.10.58", "< 0.14"]
  # XXX: https://github.com/winebarrel/fluent-plugin-dd/issues/2
  spec.add_dependency 'dogapi', '>= 1.15.0'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '>= 3.0.0'
end
