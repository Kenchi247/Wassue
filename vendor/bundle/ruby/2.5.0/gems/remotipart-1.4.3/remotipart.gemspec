# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: remotipart 1.4.3 ruby lib

Gem::Specification.new do |s|
  s.name = "remotipart".freeze
  s.version = "1.4.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Greg Leppert".freeze, "Steve Schwartz".freeze]
  s.date = "2019-05-23"
  s.description = "Remotipart is a Ruby on Rails gem enabling remote multipart forms (AJAX style file uploads) with jquery-rails.\n    This gem augments the native Rails 3 jQuery-UJS remote form function enabling asynchronous file uploads with little to no modification to your application.\n    ".freeze
  s.email = ["greg@formasfunction.com".freeze, "steve@alfajango.com".freeze]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".travis.yml",
    "Appraisals",
    "CONTRIBUTING.md",
    "Gemfile",
    "History.rdoc",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION_COMPATIBILITY.rdoc",
    "gemfiles/rails_3.2.gemfile",
    "gemfiles/rails_4.2.gemfile",
    "gemfiles/rails_5.2.gemfile",
    "gemfiles/rails_6.0.gemfile",
    "lib/generators/remotipart/install/install_generator.rb",
    "lib/remotipart.rb",
    "lib/remotipart/middleware.rb",
    "lib/remotipart/rails.rb",
    "lib/remotipart/rails/engine.rb",
    "lib/remotipart/rails/railtie.rb",
    "lib/remotipart/rails/version.rb",
    "lib/remotipart/render_overrides.rb",
    "lib/remotipart/request_helper.rb",
    "lib/remotipart/view_helper.rb",
    "remotipart.gemspec",
    "spec/dummy_app/.gitignore",
    "spec/dummy_app/Rakefile",
    "spec/dummy_app/app/assets/images/rails.png",
    "spec/dummy_app/app/assets/javascripts/application.js.erb",
    "spec/dummy_app/app/assets/javascripts/comments.js",
    "spec/dummy_app/app/assets/stylesheets/application.css",
    "spec/dummy_app/app/assets/stylesheets/scaffold.css",
    "spec/dummy_app/app/controllers/application_controller.rb",
    "spec/dummy_app/app/controllers/comments_controller.rb",
    "spec/dummy_app/app/helpers/application_helper.rb",
    "spec/dummy_app/app/helpers/comments_helper.rb",
    "spec/dummy_app/app/models/comment.rb",
    "spec/dummy_app/app/views/comments/_comment.html.erb",
    "spec/dummy_app/app/views/comments/_form.html.erb",
    "spec/dummy_app/app/views/comments/_new_comment_links.html.erb",
    "spec/dummy_app/app/views/comments/create.html.erb",
    "spec/dummy_app/app/views/comments/create.js.erb",
    "spec/dummy_app/app/views/comments/destroy.js.erb",
    "spec/dummy_app/app/views/comments/edit.html.erb",
    "spec/dummy_app/app/views/comments/escape_test.html.erb",
    "spec/dummy_app/app/views/comments/index.html.erb",
    "spec/dummy_app/app/views/comments/new.html.erb",
    "spec/dummy_app/app/views/comments/show.html.erb",
    "spec/dummy_app/app/views/layouts/application.html.erb",
    "spec/dummy_app/bin/bundle",
    "spec/dummy_app/bin/rails",
    "spec/dummy_app/bin/rake",
    "spec/dummy_app/bin/setup",
    "spec/dummy_app/bin/update",
    "spec/dummy_app/config.ru",
    "spec/dummy_app/config/application.rb",
    "spec/dummy_app/config/boot.rb",
    "spec/dummy_app/config/database.yml",
    "spec/dummy_app/config/environment.rb",
    "spec/dummy_app/config/environments/development.rb",
    "spec/dummy_app/config/environments/test.rb",
    "spec/dummy_app/config/initializers/secret_token.rb",
    "spec/dummy_app/config/routes.rb",
    "spec/dummy_app/config/secrets.yml",
    "spec/dummy_app/db/migrate/20110209210252_create_comments.rb",
    "spec/dummy_app/db/migrate/20110209210315_add_attachment_to_comment.rb",
    "spec/dummy_app/db/migrate/20110714205346_add_other_attachment_to_comment.rb",
    "spec/dummy_app/db/schema.rb",
    "spec/dummy_app/db/seeds.rb",
    "spec/features/comments_spec.rb",
    "spec/fixtures/hi.txt",
    "spec/fixtures/qr.jpg",
    "spec/spec_helper.rb",
    "spec/support/arel_helper.rb",
    "spec/support/connection_helper.rb",
    "spec/support/integration_helper.rb",
    "vendor/assets/javascripts/jquery.iframe-transport.js",
    "vendor/assets/javascripts/jquery.remotipart.js"
  ]
  s.homepage = "http://opensource.alfajango.com/remotipart/".freeze
  s.rubygems_version = "2.7.8".freeze
  s.summary = "Remotipart is a Ruby on Rails gem enabling remote multipart forms (AJAX style file uploads) with jquery-rails.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<jeweler>.freeze, [">= 0"])
      s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_development_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<paperclip>.freeze, [">= 0"])
      s.add_development_dependency(%q<remotipart>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<jeweler>.freeze, [">= 0"])
      s.add_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<paperclip>.freeze, [">= 0"])
      s.add_dependency(%q<remotipart>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<jeweler>.freeze, [">= 0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<paperclip>.freeze, [">= 0"])
    s.add_dependency(%q<remotipart>.freeze, [">= 0"])
  end
end

