#
# Be sure to run `pod lib lint DCCJMiddleware.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DCCJMiddleware'
  s.version          = '0.3.5'
  s.summary          = 'A Middleware Modules can decouple individual business components.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  A Middleware Modules can decouple individual business components.
  Dependent on: Network, Gateway and some base lower modules
  Used By: Some business components such as Login, cashier...
                       DESC

  s.homepage         = 'https://github.com/Ghstart/DCCJMiddleware'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ghstart' => 'gonghuan2020@gmail.com' }
  s.source           = { :git => 'https://github.com/Ghstart/DCCJMiddleware.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'DCCJMiddleware/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DCCJMiddleware' => ['DCCJMiddleware/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'DCCJCashier', '~> 0.4.7'
  s.dependency 'DCCJUser', '~> 0.1.8'
  s.dependency 'DCCJMessageCenter', '~> 0.2.6'
  s.dependency 'DCCJNetwork', '~> 0.4.1'
  s.dependency 'DCCJLogin', '~> 0.2.1'
  s.dependency 'DCCJCycleLoan', '~> 0.1.2'
end
