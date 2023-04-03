source 'https://cdn.cocoapods.org/'
platform :ios, '10.0'

install! 'cocoapods',
        :generate_multiple_pod_projects => true, # 加快项目索引速度
        :incremental_installation => true,
        :disable_input_output_paths => true,
        :warn_for_unused_master_specs_repo => false

def enable_modular_headers
  pod 'PXXOCLib', :path=>'PXXOCLib', :modular_headers => true
  pod 'PXXSwiftLib', :path=>'PXXSwiftLib', :modular_headers => true
  pod 'PXXFoundation', :path=>'PXXFoundation', :modular_headers => true
end

target 'XcodePodProjectDemo_Example' do
  use_frameworks!
  enable_modular_headers
  pod 'SDWebImage'
  pod 'glog'
  pod 'React-logger', :path=>'React-logger'
 
  target 'XcodePodProjectDemo_Tests' do
    inherit! :search_paths
  end
end


post_install do |installer|
  traverse_pod(installer)
  traverse_pod_for_version_old(installer)
end

def traverse_pod(installer)
  return if installer.pod_target_subprojects.nil?
  installer.pod_target_subprojects.each do |project|
    pod_name = project.project_name
    project.targets.each do |target|
      target.build_configurations.each do |config|
        post_install_traverse_target(project, pod_name, config)
      end
    end
  end
end

def traverse_pod_for_version_old(installer)
  return if installer.pods_project.nil?
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      post_install_traverse_target(nil, target.name, config)
    end
  end
end

def post_install_traverse_target(project, pod_name, config)
  puts "post install: #{pod_name} config: #{config.name}"
  archs = ['$(inherited) i386 armv7']
  macros = ['$(inherited)']
  if config.name == 'Debug'
    macros << 'DEBUG=1'
  elsif config.name == 'Release'
    macros << 'RELEASE=1'
  end
  config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= macros
  config.build_settings['EXCLUDED_ARCHS'] ||= archs
  if pod_name != "PXXFoundation"
    config.build_settings['DEAD_CODE_STRIPPING'] = "YES"
    return unless project
    project_config = project.build_configuration_list[config.name]
    project_config.build_settings['DEAD_CODE_STRIPPING'] = "YES"
  else
    config.build_settings['GCC_TREAT_WARNINGS_AS_ERRORS'] = "YES"
  end
end
    
