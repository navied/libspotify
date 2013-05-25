Pod::Spec.new do |s|
  s.name = 'libspotify'
  s.version = '12.1.62'
  s.author = 'Spotify'
  s.license = 'BSD 3-Clause'
  s.homepage = 'https://github.com/navied/libspotify'
  s.summary = 'Spotify SDK'
  s.description = "Spotify SDK"
  s.source = { :git => 'https://github.com/navied/libspotify.git' }
  s.requires_arc = true

  s.source_files = 'libspotify.framework/Versions/12.1.62/Headers'
  s.preserve_paths = 'libspotify.framework/Versions/12.1.62/*'
  s.frameworks = 'libspotify','SystemConfiguration', 'CFNetwork', 'CoreAudio', 'AudioToolbox', 'AVFoundation'
  s.xcconfig = {'OTHER_LDFLAGS' => '$(inherited)', 'OTHER_LDFLAGS' => '-all_load','FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/libspotify' }
  s.platform = :ios
end
