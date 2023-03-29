source 'https://cdn.cocoapods.org/'
platform :ios, '10.0'

install! 'cocoapods',
        :generate_multiple_pod_projects => true, # 加快项目索引速度
        :incremental_installation => true,
        :disable_input_output_paths => true,
        :warn_for_unused_master_specs_repo => false

def enable_modular_headers
  use_modular_headers! # 这里也可以用 use_frameworks 效果一样
  pod 'PXXOCLib', :path=>'PXXOCLib'
  pod 'PXXSwiftLib', :path=>'PXXSwiftLib'
  pod 'PXXFoundation', :path=>'PXXFoundation'
end

def enable_framework
  use_frameworks!
  # Alamofire 不能用 use_modular_headers， 否则会找不到swift依赖库，需要特殊处理
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
