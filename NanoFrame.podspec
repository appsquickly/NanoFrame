Pod::Spec.new do |s|
  s.name         = "NanoFrame"
  s.version      = "1.0.5"
  s.summary      = "A minimal frame-based layout and UIKit additions."
  s.homepage     = "https://github.com/appsquickly/NanoFrame"
  s.license      = { :type => 'Apache2.0', :file => 'LICENSE' }
  s.author       = { "Jasper Blues" => "jasper@appsquick.ly" } 
  s.source       = { :git => "https://github.com/appsquickly/NanoFrame.git", :tag => s.version.to_s }
  s.platform     = :ios
  s.source_files = 'Source/**/*.{h,m}'
  s.frameworks   = 'QuartzCore'
  s.requires_arc = true
  s.ios.deployment_target = '9.0'
  s.source_files     = 'NanoFrame/*.swift'
  s.swift_version = '5.1'
end
