Pod::Spec.new do |s|

s.name         = "paddle-lite"
s.version      = "2.9"
s.summary      = "paddle-lite with cv & extra for iOS"

s.homepage     = "https://github.com/PaddlePaddle/Paddle-Lite"
s.author       = { 'PaddlePaddle Authors' => 'PaddlePaddle Authors' }
s.license      = { :type => 'Apache-2.0 license', :file => 'LICENSE' }
s.platform     = :ios, "9.0"

s.source       = { :http => "https://github.com/PaddlePaddle/Paddle-Lite/releases/download/v2.9/inference_lite_lib.ios.armv8.with_cv.with_extra.tiny_publish.tar.gz", :tag => s.version.to_s }

s.source_files  = "inference_lite_lib.ios64.armv8/include/*.h"
s.ios.vendored_library = "inference_lite_lib.ios64.armv8/lib/*.a"

s.pod_target_xcconfig = {
	'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
	'VALID_ARCHS' => 'arm64'
}
end
