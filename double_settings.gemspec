# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "double_settings"
  spec.version       = '0.0.2'
  spec.authors       = ['Surfdome & MadeTech']
  spec.email         = ['orest.hrycyna@surfdome.com']
  spec.summary       = %q{Double settings gem for endpoints}
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end
