platform :ios, '9.0'

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '4.1'
        end
    end
end

def shared
  # Networking
 pod 'Moya/RxSwift', '~> 11.0'

 # Data
 pod 'Kingfisher'
 pod 'ObjectMapper'

 # Utility
  pod 'R.swift'

  # UI Helper
  pod 'SnapKit'
  pod 'IQKeyboardManagerSwift'
  pod 'PullToRefreshKit'

  # Redux
  pod 'ReSwift'
  pod 'ReSwiftRouter'
  pod 'ReRxSwift', '~> 1.0'

  # Reactive
  pod 'RxSwift', '~> 4.0'
  pod 'RxCocoa', '~> 4.0'
  
  inhibit_all_warnings!
end

target 'Pixa' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Pixa
  shared

  target 'PixaTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'PixaUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
