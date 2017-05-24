
Pod::Spec.new do |s|

  s.name         = "TWFreshLoadingView"
  s.version      = "0.8.0"
  s.summary      = "A Fresh loading view used on iOS."
  s.description  = <<-DESC
                    It is a Fresh loading view used on iOS, which implement by Objective-C
                   DESC
  s.homepage     = "https://github.com/1001hotel/TWFreshLoadingView"
  s.license      = "MIT"
  s.author             = { "xurenyan" => "812610313@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/1001hotel/TWFreshLoadingView.git", :tag => s.version.to_s }
  s.source_files  = "TWFreshLoadingView/TWFreshLoadingView/TWFreshLoadingView/*.{h,m}"
  s.resources = "TWFreshLoadingView/TWFreshLoadingView/TWFreshLoadingView/Images/*.png"
  s.frameworks = "UIKit", "Foundation"
  # s.libraries = "iconv", "xml2"
  s.requires_arc = true
  # s.dependency "JSONKit", "~> 1.4"

end
