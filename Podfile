platform :ios, '16.0'
use_frameworks!

# ignore all warnings from all pods
inhibit_all_warnings!

def common_pods
    pod 'CTFeedback'
    pod 'GPUImage'
    pod 'pop'
    pod 'TTCounterLabel'
    pod 'CocoaAsyncSocket'
    pod 'RPCircularProgress'
    pod 'MPGNotification'
end

target 'ShutterBridge' do
    common_pods
end

# Force a modern deployment target on every pod so the toolchain does not look
# for the removed `libarclite` runtime, and let the app's xcconfig overrides
# inherit cleanly from the CocoaPods-generated settings.
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '16.0'
            config.build_settings['ENABLE_BITCODE'] = 'NO'
            # GPUImage / older pods ship without module maps that play nice with
            # the modern Swift compiler's stricter checks.
            config.build_settings['GCC_WARN_INHIBIT_ALL_WARNINGS'] = 'YES'
        end
    end
end
