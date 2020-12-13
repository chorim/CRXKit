Pod::Spec.new do |spec|

  spec.name         = "CRXKit"
  spec.version      = "1.0.0"
  spec.summary      = "Choim eXtension Kit"

  spec.description  = <<-DESC
  ChoRim eXtension Kit.
  A collection of extended frameworks.
  DESC

  spec.homepage     = "https://github.com/chorim/CRXKit"
  spec.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE" }

  spec.author             = { "Insu Byeon" => "yuki@yuki.kr" }

  spec.platform     = :ios, "11.0"

  spec.source       = { :git => "https://github.com/chorim/CRXKit.git", :tag => "#{spec.version}" }


  spec.source_files  = "CRXKit", "CRXKit/Sources/**/*.{swift,h,m}"
  # spec.exclude_files = "Classes/Exclude"

  spec.swift_versions = "5.0"

end
