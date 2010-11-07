# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{eyeballs}
  s.version = "0.5.12.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Paul Campbell"]
  s.date = %q{2010-11-07}
  s.default_executable = %q{eyeballs}
  s.email = %q{paul@rslw.com}
  s.executables = ["eyeballs"]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "CHANGELOG",
     "Gemfile",
     "Gemfile.lock",
     "README.md",
     "Rakefile",
     "TODO",
     "app.rb",
     "bin/eyeballs",
     "config.ru",
     "dist/jquery/jquery-1.4.2.min.js",
     "dist/jquery/jquery.ba-bbq.min.js",
     "dist/mustache/mustache.0.3.0.js",
     "eyeballs.gemspec",
     "lib/eyeballs.rb",
     "lib/eyeballs/app_detector.rb",
     "lib/eyeballs/app_generator.rb",
     "lib/eyeballs/cli.rb",
     "lib/eyeballs/controller_generator.rb",
     "lib/eyeballs/model_generator.rb",
     "lib/eyeballs/scaffold_generator.rb",
     "src/adapters/o_O.localstorage.js",
     "src/drivers/jquery/adapters/o_O.couchdb.js",
     "src/drivers/jquery/adapters/o_O.dom.js",
     "src/drivers/jquery/adapters/o_O.rest.js",
     "src/drivers/jquery/modules/o_O.controller.js",
     "src/drivers/jquery/modules/o_O.routes.js",
     "src/drivers/jquery/modules/o_O.support.js",
     "src/modules/o_O.model.js",
     "src/modules/o_O.validations.js",
     "src/o_O.js",
     "templates/app_root/app.rb",
     "templates/app_root/config/routes.js",
     "templates/app_root/index.html",
     "templates/controller.js",
     "templates/initializer.js",
     "templates/model.js",
     "templates/scaffold_controller.js",
     "templates/scaffold_edit.html.mustache",
     "templates/scaffold_index.html",
     "templates/scaffold_partial.html.mustache",
     "test/index.html",
     "test/unit/qunit.css",
     "test/unit/qunit.js",
     "test/unit/test_binding.html",
     "test/unit/test_controller.html",
     "test/unit/test_dom.html",
     "test/unit/test_dom_with_callbacks.html",
     "test/unit/test_localstorage.html",
     "test/unit/test_model.html",
     "test/unit/test_model_with_callbacks.html",
     "test/unit/test_params.html",
     "test/unit/test_rest.html",
     "test/unit/test_routing.html"
  ]
  s.homepage = %q{http://www.github.com/paulca/eyeballs.js}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A lightweight javascript MVC framework.}
  s.test_files = [
    "spec/app_generator_spec.rb",
     "spec/controller_generator_spec.rb",
     "spec/model_generator_spec.rb",
     "spec/rack_app_detector_spec.rb",
     "spec/scaffold_generator_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
    else
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
    end
  else
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
  end
end

