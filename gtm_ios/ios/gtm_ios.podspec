Pod::Spec.new do |s|
  s.name             = 'gtm_ios'
  s.version          = '0.0.2'
  s.summary          = 'Flutter plugin for Google Tag Manager on iOS.'
  s.description      = <<-DESC
    A Flutter plugin that provides Google Tag Manager integration for iOS.
    Supports tag management, analytics, and tracking configurations.
  DESC
  s.homepage         = 'http://example.com'
  s.license          = { :type => 'MIT', :file => '../LICENSE' }  # fixed missing type
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :git => 'https://github.com/YOUR_USERNAME/gtm.git', :tag => s.version.to_s }  # fixed missing source key
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'
  s.dependency 'GoogleTagManager', '~> 8.0'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  s.static_framework = true
end
