#
# Be sure to run `pod lib lint CardTabBar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CardTabBar'
  s.version          = '1.0.0'
  s.summary          = 'This library is for adding animation to iOS tabbar items, which is inherited from UITabBarController.'

  s.homepage         = 'https://github.com/yusadogru/CardTabBar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yusadogru' => 'yusadogru@gmail.com' }
  s.source           = { :git => 'https://github.com/yusadogru/CardTabBar.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/yusadogru'

  s.ios.deployment_target = '13.0'

  s.source_files = "Sources/**/*.{h,m,strings,swift}"
  s.resources    = "Sources/**/*.{xcassets,png,json}"
  s.resource_bundle = { 'CardTabBar' => ['Sources/**/*.{xcassets}'] }
end
