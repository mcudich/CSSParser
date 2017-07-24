Pod::Spec.new do |s|
  s.name             = "CSSParser"
  s.version          = "1.0.0"
  s.summary          = "Swift CSS parser based on katana-parser."
  s.description      = "CSSParser is a tiny Swift wrapper around the pure C katana-parser framework."

  s.homepage         = "https://github.com/mcudich/CSSParser"
  s.license          = "MIT"
  s.author           = { "Matias Cudich" => "mcudich@gmail.com" }
  s.source           = { :git => "https://github.com/mcudich/CSSParser.git", :tag => s.version.to_s, :submodules => true }
  s.social_media_url = "https://twitter.com/mcudich"

  s.ios.deployment_target = "8.0"

  s.source_files = "Sources/**/*", "Carthage/Checkouts/katana-parser/src/*"
  s.public_header_files = "Sources/CSSParser.h"
end
