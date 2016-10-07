# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails/i18n/generator/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-i18n-generator"
  spec.version       = Rails::I18n::Generator::VERSION
  spec.authors       = ["xiaohui"]
  spec.email         = ["xiaohui@zhangxh.net"]
  spec.summary       = %q{Generate locales for models and controlers}
  spec.description   = %q{This gem is re-built from gem i18n_yaml_generator}
  spec.homepage      = "http://github.com/xiaohui-zhangxh/rails-i18n-generator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rails", "> 3.2.0"
  
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
