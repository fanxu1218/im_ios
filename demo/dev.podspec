#
# Be sure to run `pod lib lint imkit.podspec' to ensure this is a
# valid spec before submitting.
#

Pod::Spec.new do |s|
  s.name             = "gobelieve"
  s.version          = "0.1.1"
  s.summary          = "imkit."
  s.description      = "imkit of gobelieve"
  s.homepage         = "http://developer.gobelieve.io"
  s.license          = 'MIT'
  s.author           = { "houxh" => "houxuehua49@gmail.com" }
  s.source           = { :git => 'git@github.com:GoBelieveIO/im_ios.git' }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true
  s.preserve_paths   = 'imkit/imkit/amr/libopencore-amrnb.a'
  s.library          = 'opencore-amrnb'
  s.xcconfig         = { 'LIBRARY_SEARCH_PATHS' => '"${SRCROOT}/imkit/imkit/amr"' }

  s.subspec 'imsdk' do |sp|
    sp.public_header_files = 'imsdk/imsdk/*.h'
    sp.source_files        = 'imsdk/imsdk/*.{h,m,c}'
  end

  s.subspec 'imkit' do |sp|
    sp.source_files     = 'imkit/imkit/**/*.{h,m,c}'
    sp.exclude_files    = 'imkit/imkit/third-party'
    sp.resource         = ['imkit/imkit/imKitRes/sounds/*.aiff', 'imkit/imkit/imKitRes/images.xcassets', 'imkit/imkit/imKitRes/Emoji.xcassets', 'imkit/imkit/imKitRes/gobelieve.db']
    sp.dependency 'gobelieve/imsdk'
    sp.dependency 'SDWebImage', '~> 4.4.1'
    sp.dependency 'Toast', '~> 2.4'
    sp.dependency 'MBProgressHUD', '~> 0.9.1'
    sp.dependency 'FMDB', '~> 2.6.2'
    sp.dependency 'Masonry', '~>1.0.2'
    sp.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'YES' }    
  end

end
