Pod::Spec.new do |s|
  s.name         = "CCZoomTransition"
  s.version      = "0.1.1"
  s.summary      = "Zoom transition effect present viewController"
  s.description  = <<-DESC
			zoom transition effect present viewController,likes apple open App effect
                   DESC

  s.homepage     = "https://github.com/chbo297/CCZoomTransition"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "ChengBo" => "chbo297@gmail.com" }
  s.social_media_url   = "https://twitter.com/booooo07"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/chbo297/CCZoomTransition.git", :tag => s.version }

  s.source_files  = "CCZoomTransition", "CCZoomTransition/*.{swift}"

  s.framework  = "UIKit"

end
