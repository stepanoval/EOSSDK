#
#  Be sure to run `pod spec lint EOSSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "EOSSDK"
  s.version      = "1.2"
  s.summary      = "EOSSDK 1.2 version"
  
   s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage     = "https://dev.epicgames.com/docs/services/zh-CN/index.html"

  s.license      = "MIT"
 
  s.author             = { 'Epic' => 'https://dev.epicgames.com' }
 
  s.platform     = :ios, '9.0'

  s.ios.deployment_target = "9.0"
  
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES','EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.source       = { :git => 'https://github.com/stepanoval/EOSSDK.git', :tag => "#{s.version}" }

  s.frameworks          = 'AuthenticationServices'

  s.requires_arc = true

  s.ios.vendored_frameworks = 'EOSSDK.framework'

  s.ios.frameworks = 'UIKit', 'Foundation', 'WebKit'

end
