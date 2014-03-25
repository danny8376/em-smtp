# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'em/smtp/version'

Gem::Specification.new do |spec|
  spec.name          = "em-smtp"
  spec.version       = Em::Smtp::VERSION
  spec.authors       = ["DannyAAM"]
  spec.email         = ["danny8376+gems@gmail.com"]
  spec.description   = %q{An easy smtp eventmachine wrapper for activemailer.}
  spec.summary       = %q{An easy smtp eventmachine wrapper for activemailer.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "eventmachine"
  spec.add_dependency "mail"
  spec.add_dependency "actionmailer"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
