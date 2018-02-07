Pod::Spec.new do |s|
  s.name             = 'ELEmptyView'
  s.version          = '0.1.0'
  s.summary          = '自己封装的空界面'
  s.description      = <<-DESC
TODO: 常用的SDK，方便之后创建新工程的时候使用.
                       DESC

  s.homepage         = 'https://coding.net/u/ElaineYin/p/ELBaseKitSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ElaineYin' => 'linlinyin1991@163.com' }
  s.platform         = :ios, "8.0"
  s.source           = { :git => 'https://git.coding.net/ElaineYin/ELBaseKitSDK.git', :tag => s.version }
  s.frameworks = 'UIKit'  
  s.resources = "Resources/*.png"
  s.ios.deployment_target = '8.0'
  s.public_header_files = 'ELBaseSDK/ELBaseKit.h'
  s.requires_arc = true
  s.source_files = 'ELBaseSDK/**/*'  
  s.subspec 'ELViewExtension' do |ss|
      ss.source_files = 'ELBaseSDK/ELViewExtension/**/*'
      ss.public_header_files = 'ELBaseSDK/ELViewExtension/UIView+ELExtension.h'
  end
  s.subspec 'ELDateExtension' do |ss|
      ss.source_files = 'ELBaseSDK/ELDateExtension/**/*'
      ss.public_header_files = 'ELBaseSDK/ELDateExtension/NSDate+ELExtension.h'
  end

end
 