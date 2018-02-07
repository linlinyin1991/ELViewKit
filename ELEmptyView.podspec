Pod::Spec.new do |s|
  s.name             = 'ELEmptyView'
  s.version          = '0.1.1'
  s.summary          = '自己封装的空界面'
  s.description      = <<-DESC
TODO: 常用的SDK，方便之后创建新工程的时候使用.
                       DESC

  s.homepage         = 'https://github.com/linlinyin1991/ELViewKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ElaineYin' => 'linlinyin1991@163.com' }
  s.platform         = :ios, "8.0"
  s.source           = { :git => 'https://github.com/linlinyin1991/ELViewKit.git', :tag => s.version }
  s.frameworks = 'UIKit'  
  s.ios.deployment_target = '8.0'
  s.public_header_files = 'ELEmptyView/UIView+Empty.h'
  s.requires_arc = true
  s.source_files = 'ELEmptyView/*.{h,m}' 
  s.resources = "ELEmptyView/EmptyImage.bundle" 
  s.dependency 'ELKitSDK/ELViewCategory'
  s.dependency 'Masonry'
 end
 