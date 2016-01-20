#
# Be sure to run `pod lib lint DocuSignESign.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "DocuSignESign"
    s.version          = "1.0.0"

    s.summary          = "DocuSign REST API Client"
    s.description      = <<-DESC
                         The DocuSign CocoaPod library makes integrating DocuSign into your apps and websites a super fast and painless process. The library is open sourced on GitHub, look for the docusign-obj-client repository. Join the eSign revolution!
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'
    
    s.homepage     = "https://github.com/docusign/docusign-objc-client"
    s.license      = "LICENSE"
    s.source       = { :git => "https://github.com/docusign/docusign-objc-client", :tag => "#{s.version}" }
    s.author       = { "DocuSign" => "devcenter@docusign.com" }

    s.source_files = 'DocuSignESign/*'
    s.public_header_files = 'DocuSignESign/*.h'

    s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'JSONModel', '~> 1.1'
    s.dependency 'ISO8601', '~> 0.3'
	s.deprecated = true
end

