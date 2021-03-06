# -*- encoding: utf-8 -*-
# stub: vagrant-hostmanager 1.8.5 ruby lib

Gem::Specification.new do |s|
  s.name = "vagrant-hostmanager"
  s.version = "1.8.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Shawn Dahlen", "Seth Reeser"]
  s.date = "2016-07-20"
  s.description = "A Vagrant plugin that manages the /etc/hosts file within a multi-machine environment"
  s.email = ["shawn@dahlen.me", "info@devopsgroup.io"]
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "A Vagrant plugin that manages the /etc/hosts file within a multi-machine environment"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
