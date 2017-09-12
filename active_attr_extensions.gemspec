# -*- encoding: utf-8 -*-
require File.expand_path("../lib/active_attr_extensions/version", __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = [""]
  gem.email         = ["engineering@backupify.com"]
  gem.description   = %q{Extensions to ActiveAttr}
  gem.summary       = %q{Extensions to ActiveAttr}
  gem.homepage      = "https://github.com/backupify/active_attr_extensions"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "active_attr_extensions"
  gem.require_paths = ["lib"]
  gem.version       = ActiveAttrExtensions::VERSION

  gem.add_runtime_dependency "activemodel",   ">= 3.0.2", "< 5.2"
  gem.add_runtime_dependency "activesupport", ">= 3.0.2", "< 5.2"
  gem.add_runtime_dependency "active_attr"

  gem.add_development_dependency "bundler",      "~> 1.0"
  gem.add_development_dependency "factory_girl", ">= 2.2", "< 5.2"
  gem.add_development_dependency "rake",         ">= 0.9.0"
  gem.add_development_dependency "rspec",        "~> 2.11"
  gem.add_development_dependency "tzinfo",       "~> 0.3.29"
end
