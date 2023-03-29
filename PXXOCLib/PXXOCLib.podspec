
Pod::Spec.new do |s|
  s.name             = 'PXXOCLib'
  s.version          = '0.1.0'
  s.summary          = 'A short description of PXXOCLib.'


  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/onezens/XcodePodProjectDemo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'onezens' => 'onezens@onezen.cc' }
  s.source           = { :git => 'https://github.com/onezens/XcodePodProjectDemo.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files = 'PXXOCLib/Classes/**/*'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.dependency 'PXXSwiftLib'

end
