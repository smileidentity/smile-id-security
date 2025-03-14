Pod::Spec.new do |s|
  s.name                = 'SmileIDSecurity'
  s.version             = '0.0.x'
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
    # Cleanup
    rm -rf SmileIDSecurity.xcframework
    rm -f SmileIDSecurity.xcframework.zip
    curl -L #{s.source[:http]} -o SmileIDSecurity.xcframework.zip
    # For some reason on OSX it seems we have to extract the zip twice since otherwise it doesn't unzip
    unzip -o SmileIDSecurity.xcframework.zip
    sleep 1
    unzip -o SmileIDSecurity.xcframework.zip
  CMD
end
