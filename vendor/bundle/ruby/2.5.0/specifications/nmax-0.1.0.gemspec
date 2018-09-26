# -*- encoding: utf-8 -*-
# stub: nmax 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "nmax".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "TODO: Set to 'http://mygemserver.com'" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Avtor022".freeze]
  s.date = "2018-09-26"
  s.description = "This Gem shows the n greatest numbers from the text".freeze
  s.email = ["avtor022@gmail.com".freeze]
  s.executables = ["nmax".freeze]
  s.files = ["bin/nmax".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "nmax!".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.16"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
