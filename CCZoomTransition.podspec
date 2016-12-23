Pod::Spec.new do |s|
  s.name         = "CCZoomTransition"
  s.version      = "0.1.0"
  s.summary      = "Zoom effect view controller transition,looks like system to open the App."
  s.description  = <<-DESC
			zoom effect viewController transition like what apple do open App effect
                   DESC

  s.homepage     = "https://github.com/chbo297/CCZoomTransition"
  s.screenshots  = "https://github.com/chbo297/CCZoomTransition/blob/master/CCZoomTransitionDemo/demopic01.gif", "https://github.com/chbo297/CCZoomTransition/blob/master/CCZoomTransitionDemo/demopic02.gif"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "ChengBo" => "chbo297@gmail.com" }
  s.social_media_url   = "http://twitter.com/booooo07"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/chbo297/CCZoomTransition.git", :tag => s.version }

  s.source_files  = "CCZoomTransition", "CCZoomTransition/*.{swift}"

  s.framework  = "UIKit"

end
