folly_compiler_flags = "-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32"
boost_compiler_flags = "-Wno-documentation"
Pod::Spec.new do |s|
  s.name             = 'PXXFoundation'
  s.version          = '0.1.0'
  s.summary          = 'A short description of PXXFoundation.'


  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/onezens/XcodePodProjectDemo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'onezens' => 'onezens@onezen.cc' }
  s.source           = { :git => 'https://github.com/onezens/XcodePodProjectDemo.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files = 'PXXFoundation/Classes/**/*.{h,m,mm,cpp}'
  s.public_header_files = 'PXXFoundation/Classes/**/*.h'
  s.prefix_header_contents = [
    "#ifdef __OBJC__",
    "#import <UIKit/UIKit.h>",
    "#endif",
  ]
  s.exclude_files = "PXXFoundation/Classes/Exclude"

  s.compiler_flags = folly_compiler_flags + " " + boost_compiler_flags

  s.dependency 'Alamofire'
  s.dependency 'SDWebImage'
  s.dependency 'React-logger'
end
