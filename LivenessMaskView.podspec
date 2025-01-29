#
#  Be sure to run `pod spec lint LivenessUtility.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "LivenessMaskView"
  spec.version      = "0.0.20"
  spec.summary      = "A short description of LivenessMaskView."
  spec.homepage     = "https://github.com/nhatnuoc/liveness-mask-view-pod"
  spec.author       = { 'Nguyen Thanh Binh' => 'binhvuong.2010@gmail.com' }
  spec.license      = "MIT"
  
  spec.platform = :ios
  spec.ios.deployment_target = "11.0"

  # Bỏ spec.source vì ta sẽ tải file bằng prepare_command
  spec.source = { :http => "https://github.com/nhatnuoc/liveness-mask-view-pod/releases/download/0.0.20/LivenessMaskView.zip" }
  
  spec.vendored_frameworks = "NDA/LivenessMaskView.xcframework"
  spec.swift_version = "5.0"

  # Script tải file .zip nếu chưa tồn tại
  spec.prepare_command = <<-CMD
    echo "Current directory: $(pwd)"
    FRAMEWORK_DIR="NDA"
    FRAMEWORK_ZIP="LivenessMaskView.zip"
    FRAMEWORK_URL="https://github.com/nhatnuoc/liveness-mask-view-pod/releases/download/0.0.20/LivenessMaskView.zip"

    if [ ! -d "$FRAMEWORK_DIR/LivenessMaskView.xcframework" ]; then
      echo "Downloading LivenessMaskView framework..."
      curl -L -o "$FRAMEWORK_ZIP" "$FRAMEWORK_URL"
      unzip -o "$FRAMEWORK_ZIP" -d "$FRAMEWORK_DIR"
    else
      echo "LivenessMaskView framework already exists, skipping download."
    fi
  CMD
end
