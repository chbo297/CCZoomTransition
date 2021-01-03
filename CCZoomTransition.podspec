Pod::Spec.new do |s|
  s.name         = "CCZoomTransition"
  s.version      = "0.2.1"
  s.summary      = "Deprecated, Use BOTransition (https://cocoapods.org/pods/BOTransition) instead)"
  s.description  = "新建了更强大、更全面的BOTransition，该库不再维护，请使用BOTransition (https://cocoapods.org/pods/BOTransition)"

  s.homepage     = "https://github.com/chbo297/CCZoomTransition"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "ChengBo" => "chbo297@gmail.com" }
  s.social_media_url   = "https://twitter.com/booooo07"

  s.platform     = :ios, "8.0"

  s.swift_version = "4.1"

  s.source       = { :git => "https://github.com/chbo297/CCZoomTransition.git", :tag => s.version }

  s.source_files  = "CCZoomTransition", "CCZoomTransition/*.{swift}"

  s.framework  = "UIKit"

end
