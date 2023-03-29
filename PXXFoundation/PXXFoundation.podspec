
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
  s.source_files = 'PXXFoundation/Classes/**/*'
  s.public_header_files = 'PXXFoundation/Classes/**/*.h'
  s.dependency 'Alamofire'
  s.dependency 'SDWebImage'
  s.dependency 'React-logger'
end
