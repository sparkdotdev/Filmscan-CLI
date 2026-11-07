require_relative "lib/film_scan/version"

Gem::Specification.new do |spec|
  spec.name = "film_scan"
  spec.version = FilmScan::VERSION
  spec.authors = ["mszaro"]
  spec.summary = "Correct lab scans of film stocks the scanner had no profile for"
  spec.description = <<~TEXT
    Labs scan unusual film stocks with a profile meant for another film, and
    the scans come back flat and colour shifted. This corrects them, using a
    profile for each supported stock.
  TEXT
  spec.homepage = "https://github.com/sparkdotdev/Filmscan-CLI"
  spec.license = "LicenseRef-LICENSE.MD"
  spec.required_ruby_version = ">= 4.0"

  spec.files = Dir["lib/**/*.rb", "bin/*", "profiles/*.yml", "references/*.yml", "README.md",
                   "LICENSE.MD", "CONTRIBUTING.md"]
  spec.bindir = "bin"
  spec.executables = ["filmscan"]
  spec.require_paths = ["lib"]

  spec.add_dependency "ruby-vips", "~> 2.2"
  spec.add_development_dependency "minitest", "~> 5.25"
  spec.add_development_dependency "rake", "~> 13.0"
end
