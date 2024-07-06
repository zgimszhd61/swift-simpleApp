# Uncomment the next line to define a global platform for your project
# platform :ios, '17.5'
platform :ios, '17.5'
target 'SimpleAPP' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for SimpleAPP
  pod 'Alamofire'
  pod 'Just'
  
  target 'SimpleAPPTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'SimpleAPPUITests' do
    # Pods for testing
  end

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '17.5'
    end
  end
end