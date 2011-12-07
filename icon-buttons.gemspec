Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.1"
  s.date = "2011-12-07"

  # Gem Details
  s.name = "icon-buttons"
  s.authors = ["Leon de Rijke"]
  s.summary = %q{icon buttons for compass}
  s.description = %q{This Compass plugin provides some easy to use mixins for creating buttons with icons.}
  s.email = "leon@leonderijke.nl"
  s.homepage = "https://github.com/leonderijke/compass-icon-buttons"

  # Gem Files
  s.files = %w(README.md)
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")
  s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  s.rubygems_version = %q{1.8.11}
  s.add_dependency("compass", [">= 0.11"])
end