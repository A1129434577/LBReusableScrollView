Pod::Spec.new do |spec|
  spec.name         = "LBReusableScrollView"
  spec.version      = "0.0.2"
  spec.summary      = "可复用ScrollView"
  spec.description  = "高性能复用ScrollView，使用简单，只需要代理返回View就可以简单实现一个滚动View，不管总共多少页，占用内存的只有当前页、前一页、后一页。"
  spec.homepage     = "https://github.com/A1129434577/LBReusableScrollView"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "刘彬" => "1129434577@qq.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = '8.0'
  spec.source       = { :git => 'https://github.com/A1129434577/LBReusableScrollView.git', :tag => spec.version.to_s }
  spec.source_files  = "LBReusableScrollView/**/*.{h,m}"
  spec.requires_arc = true
end
