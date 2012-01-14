$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tinymce_fm/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tinymce_fm"
  s.version     = TinymceFm::VERSION
  s.authors     = ["Leszek Smentek", "Maciej Litwiniuk"]
  s.email       = ["rails@galdomedia.pl"]
  s.homepage    = "https://github.com/galdomedia/tinymce_fm"
  s.summary     = "TinyMCE Filemanager plugin / wrapper for Rails"
  s.description = "TinyMCE wrapper, that takes care of managing media files (images, videos) and links within your Rails application."

  s.files = Dir["{app,config,db,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.1"
  # s.add_dependency "jquery-rails"
  s.add_dependency 'mini_magick', "~> 3.4"

  s.add_development_dependency "mysql2"
end
