require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNAudioRecorderPlayer"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "11.0"
  s.ios.deployment_target = "10.0"

  s.source       = { :git => "https://github.com/maidul98/react-native-audio-recorder-player.git", :tag => "#{s.version}" }
  # s.source = { :git => "/Users/maidulislam/Desktop/react-native-audio-recorder-player", :tag => "1.0.0" }
  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"

  s.dependency 'React-Core'
end

