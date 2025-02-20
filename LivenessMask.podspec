#
#  Be sure to run `pod spec lint LivenessUtility.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "LivenessMask"
  spec.version      = "1.0.2"
  spec.summary      = "A library for liveness detection mask view."
  spec.description  = "LivenessMask provides an easy-to-use UI component for displaying masks in liveness detection."
  spec.homepage     = "https://github.com/nhatnuoc/liveness-mask-view-pod"
  spec.author           = { 'Nguyen Thanh Binh' => 'binhvuong.2010@gmail.com' }
  spec.license      = "MIT"
  
  spec.platform = :ios
  spec.ios.deployment_target = "13.0"
  spec.source = { :git => "https://github.com/nhatnuoc/liveness-mask-view-pod.git", :tag => "v1.0.2" }
  spec.subspec 'NDA' do |nda|
      nda.dependency 'lottie-ios', '4.4.1'
      nda.vendored_frameworks = "NDA/LivenessMask.xcframework"
  end

  spec.swift_version = "5.0"
end
