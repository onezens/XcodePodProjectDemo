
Pod::Spec.new do |s|
  s.name             = 'PXXOCSwiftLib'
  s.version          = '0.2.0'
  s.summary          = 'A short description of PXXOCSwiftLib.'


  s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/onezens/XcodePodProjectDemo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'onezens' => 'onezens@onezen.cc' }
  s.source           = { :git => 'https://github.com/onezens/XcodePodProjectDemo.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files = 'PXXOCSwiftLib/Classes/**/*.{swift,h,m}'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.dependency 'PXXFoundation'
#  s.pod_target_xcconfig = {
#      'DEFINES_MODULE' => 'YES',
#      'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
#      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
#      'OTHER_SWIFT_FLAGS' => '-Xcc -Wno-error=non-modular-include-in-framework-module',
#      'SWIFT_INSTALL_OBJC_HEADER' => 'NO'
#    }
#  s.static_framework = true

end
