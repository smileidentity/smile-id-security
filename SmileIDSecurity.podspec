Pod::Spec.new do |s|
  s.name                = 'SmileIDSecurity'
  s.version             = '0.0.0'
  s.summary             = 'Security package for SmileID SDK'
  s.description         = 'Contains a library which can be used to protect sensitive information.'
  s.homepage            = 'https://usesmileid.com/'
  s.license             = { :type => 'Proprietary', :text => 'All rights reserved.' }
  s.author              = { 'Japhet' => 'japhet@usesmileid.com', 'Juma Allan' => 'juma@usesmileid.com', 'Tobi Omotayo' => 'oluwatobi@usesmileid.com', 'Robin Ankele' => 'robin@usesmileid.com' }
  s.source	        = { :http => 'https://github.com/smileidentity/smile-id-security/raw/refs/heads/main/Releases/0.0.0/SmileIDSecurity.xcframework.zip' }
  s.vendored_frameworks = 'SmileIDSecurity.xcframework'
  s.platform            = :ios, '13.0'

  # Extract the XCFramework after download
  s.prepare_command = <<-CMD
    curl -L #{s.source[:http]} -o SmileIDSecurity.xcframework.zip
    unzip SmileIDSecurity.xcframework.zip
  CMD
end
