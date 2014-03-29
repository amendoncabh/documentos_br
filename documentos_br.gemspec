# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'documentos_br/version'

Gem::Specification.new do |spec|
  spec.name          = "documentos_br"
  spec.version       = DocumentosBr::VERSION
  spec.authors       = ["Jackson Pires"]
  spec.email         = ["jackson.pires@gmail.com"]
  spec.description   = %q{Uma suite de funcionalidades para CPF e CNPJ.}
  spec.summary       = %q{Gera CPF e CNPJ para testes no formado tradicional ou
                          apenas numérico, testa se determinado número de CPF ou
                          CNPJ é válido, além muitas outras funcionalidades
                          descritas na documentação.}
  spec.homepage      = "https://github.com/jacksonpires/documentos_br"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "cpf_utils", "~> 1.1.0"
  spec.add_development_dependency "cnpj_utils", "~> 1.0.0"
  spec.add_development_dependency "titulo_eleitor_utils", "~> 1.0.0"
end