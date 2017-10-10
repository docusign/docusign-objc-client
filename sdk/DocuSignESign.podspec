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
    s.version          = "3.0.1"

    s.summary          = "DocuSign REST API"
    s.description      = <<-DESC
                         The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://docusign.com/api"
    s.license      = "Proprietary"
    s.source       = { :git => "https://github.com/docusign/docusign-objc-client.git", :tag => "#{s.version}" }
    s.author       = { "DocuSign Inc." => "devcenter@docusign.com" }

    s.source_files = 'DocuSignESign/**/*.{m,h}'
    s.public_header_files = 'DocuSignESign/**/*.h'


    s.dependency 'AFNetworking', '~> 3.1'
    s.dependency 'JSONModel', '~> 1.4'
    s.dependency 'ISO8601', '~> 0.6'
    s.dependency 'JWT', '~> 3.0.0-beta'
end

