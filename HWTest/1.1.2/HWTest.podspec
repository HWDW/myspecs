#
# Be sure to run `pod lib lint HWTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HWTest'
  s.version          = '1.1.2'
  s.summary          = 'A short description of HWTest.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/HWDW/HWTest'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HWDW' => '946563342.@qq.com' }
  s.source           = { :git => 'https://github.com/HWDW/HWTest.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#s.source_files = 'HWTest/Classes/**/*'

    s.subspec 'category' do |category|
    category.source_files = 'HWTest/Classes/category/**/*'
    category.public_header_files = 'HWTest/Classes/category/**/*.h'
    end

    s.subspec 'APIs' do |aPIs|
    aPIs.source_files = 'HWTest/Classes/APIs/**/*'
    aPIs.public_header_files = 'HWTest/Classes/APIs/**/*.h'
    aPIs.dependency 'AFNetworking'
    aPIs.dependency 'HWTest/tools'
    end

    s.subspec 'configs' do |configs|
    configs.source_files = 'HWTest/Classes/configs/**/*'
    configs.public_header_files = 'HWTest/Classes/configs/**/*.h'
    end

    s.subspec 'reformerKeys' do |reformerKeys|
    reformerKeys.source_files = 'HWTest/Classes/reformerKeys/**/*'
    reformerKeys.public_header_files = 'HWTest/Classes/reformerKeys/**/*.h'
    end

    s.subspec 'tools' do |tools|
    tools.source_files = 'HWTest/Classes/tools/**/*'
    tools.public_header_files = 'HWTest/Classes/tools/**/*.h'
    tools.dependency 'MBProgressHUD'
    tools.dependency 'FMDB'
    end

    s.subspec 'mainView' do |mainView|
    mainView.source_files = 'HWTest/Classes/mainView/**/*'
    mainView.public_header_files = 'HWTest/Classes/mainView/**/*.h'
    end


  
  # s.resource_bundles = {
  #   'HWTest' => ['HWTest/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
