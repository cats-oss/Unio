#
#  Be sure to run `pod spec lint Unio.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "Unio"
  s.version      = "0.3.0"
  s.summary      = "KeyPath based Unidirectionarl Input / Output framework with RxSwift."
  s.homepage     = "https://github.com/cats-oss/Unio"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Taiki Suzuki" => "suzuki_taiki@cyberagent.co.jp" }
  s.ios.deployment_target  = "9.0"
  s.source       = { :git => "https://github.com/cats-oss/Unio.git", :tag => "#{s.version}" }
  s.source_files = "Unio/**/*.{swift}"
  s.dependency 'RxSwift', '~> 4.0'
  s.dependency 'RxCocoa', '~> 4.0'
  s.swift_version = '4.2'
end
