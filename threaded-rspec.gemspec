# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{threaded-rspec}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Rusty Burchfield"]
  s.date = %q{2009-09-08}
  s.description = %q{An rspec runner intended for use with targets like Selenium Grid that require local parallelization but use minimal local resources.}
  s.email = %q{GICodeWarrior@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/threaded_rspec.rb",
     "lib/threaded_rspec/example_group_runner.rb",
     "spec/spec_helper.rb",
     "spec/threaded-rspec_spec.rb"
  ]
  s.homepage = %q{http://github.com/GICodeWarrior/threaded-rspec}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Threaded rspec runner}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/threaded-rspec_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
