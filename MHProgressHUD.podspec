#
#  Be sure to run `pod spec lint MHProgressHUD.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "MHProgressHUD"
  s.version      = "1.1.0"
  s.summary      = "Easy MHProgressHUD"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = "A Easy MHProgressHUD Tool"

  s.homepage     = "https://github.com/MrAiden/MHProgressHUD"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Mortar" => "yan_yan.vip@foxmail.com" }
  
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/MrAiden/MHProgressHUD.git", :tag => "#{s.version}" }


  s.source_files  = "MHProgressHUD/**/*.{h,m}"
  s.resources     = "MHProgressHUD/MBProgressHUD.bundle"
  
  s.requires_arc = true
  s.dependency 'MBProgressHUD', '~> 1.1.0'

end
