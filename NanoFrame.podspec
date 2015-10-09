Pod::Spec.new do |s|
  s.name         = "NanoFrame"
  s.version      = "0.0.1"
  s.summary      = "A minimal frame-based layout and UIKit additions."
  s.homepage     = "https://github.com/genericspecific/CKUITools"
  s.license      = { :type => 'Apache2.0', :file => 'LICENSE' }
  s.author       = { "Jasper Blues" => "jasper@appsquick.ly" } 
  s.source       = { :git => "git@github.com:appsquickly/NanoFrame.git", :tag => s.version.to_s }
  s.platform     = :ios
  s.source_files = 'Source/**/*.{h,m}'
  s.frameworks   = 'QuartzCore, UIKit'
  s.requires_arc = true
end
