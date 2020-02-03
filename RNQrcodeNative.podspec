require "json"

package = JSON.parse(File.read(File.join(File.dirname(__FILE__), "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNQrcodeNative"
  s.version      = package['version']
  s.summary      = "RNQrcodeNative"
  s.description  = <<-DESC
                  RNQrcodeNative
                   DESC
  s.homepage     = "https://www.zapper.com"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "keiran.vanvuuren@zapper.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/Zapper-Dev/react-native-qr-generator", :tag => "master" }
  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  