
platform :ios, '10.0'
# 加快项目索引速度
install! 'cocoapods', generate_multiple_pod_projects: true

def enable_modular_headers
  use_modular_headers!
  pod 'PXXOCLib', :path=>'PXXOCLib'
  pod 'PXXSwiftLib', :path=>'PXXSwiftLib'
  pod 'PXXFoundation', :path=>'PXXFoundation'
end

def enable_framework
  use_frameworks!
  pod 'Alamofire'
end

target 'XcodePodProjectDemo_Example' do
  
  enable_modular_headers
  enable_framework
  pod 'SDWebImage'
  pod 'glog'
  pod 'React-logger', :path=>'logger'
 
  target 'XcodePodProjectDemo_Tests' do
    inherit! :search_paths
  end
end
