# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sneakers/version'

Gem::Specification.new do |gem|
  gem.name          = "sneakers"
  gem.version       = Sneakers::VERSION
  gem.authors       = ["Dotan Nahum"]
  gem.email         = ["jondotan@gmail.com"]
  gem.description   = %q{Fast background processing framework for Ruby and RabbitMQ}
  gem.summary       = %q{Fast background processing framework for Ruby and RabbitMQ}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/).reject{|f| f == 'Gemfile.lock'}
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "serverengine"
  gem.add_dependency "bunny", "~> 1.1.0"
  gem.add_dependency "thread"
  gem.add_dependency "thor"

  gem.add_development_dependency "rr"
  gem.add_development_dependency "ruby-prof"
  gem.add_development_dependency "nokogiri"
  gem.add_development_dependency "guard-minitest"
  gem.add_development_dependency "metric_fu"
  gem.add_development_dependency "simplecov"
  gem.add_development_dependency "simplecov-rcov-text"
  gem.add_development_dependency "rake"
end

