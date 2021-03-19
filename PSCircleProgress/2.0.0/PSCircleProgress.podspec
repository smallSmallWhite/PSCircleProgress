#
# Be sure to run `pod lib lint PSCircleProgress.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PSCircleProgress'
  s.version          = '2.0.0'
  s.summary          = '项目中自用的圆形逆时针进度条'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Contains the decomponents for Design System.
                       DESC

  s.homepage         = 'https://github.com/smallSmallWhite/PSCircleProgress'
  s.license      = { :type => 'MIT', :file => 'LICENSE/*' }
  s.author           = 'MIT'
  s.source           = { :git => "https://github.com/smallSmallWhite/PSCircleProgress.git", :tag => "2.0.0" }
  
  s.ios.deployment_target = '13.0'

  s.source_files = 'PSCircleProgress/*'
  # s.resources = 'assets/**/*'

end
