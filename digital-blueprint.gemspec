# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "digital-blueprint"
  spec.version       = "0.0.1"
  spec.authors       = ["Sandeep Yadav"]
  spec.email         = ["sandeep.yadav@hp.com"]

  spec.summary       = %q{A modern, high customizable, responsive Jekyll theme for documention with built-in search.}
  spec.homepage      = "https://github.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|bin|_layouts|_includes|lib|Rakefile|_sass|LICENSE|README)}i) }
  spec.executables   << 'digital-blueprint'

  spec.add_runtime_dependency "jekyll", "~> 3.8.5"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.0"
  spec.add_runtime_dependency "rake", "~> 12.3.1"

  spec.add_development_dependency "bundler", "~> 2.0.1"
end
