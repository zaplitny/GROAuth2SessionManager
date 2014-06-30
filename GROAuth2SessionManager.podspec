Pod::Spec.new do |s|
  s.name         = 'CCSOAuth2SessionManager'
  s.version      = 0.1
  s.license      = 'MIT'
  s.homepage     = 'https://github.com/CrowdComputingSystems/GROAuth2SessionManager'
  s.authors      =  {'Alexandr Kantsevoi' => 'akoncevoi@workfusion.com'}
  s.summary      = 'Fork GROAuth2SessionManager for CCS company'

# Source Info
  s.platform     =  :ios, '7.0'
  s.source       =  {'git' => 'https://github.com/CrowdComputingSystems/GROAuth2SessionManager.git', 'tag' => '0.2.2'}
  s.source_files = 'GROAuth2SessionManager'
  s.framework    =  'Security'

  s.requires_arc = true
  
  s.prefix_header_contents = '#ifdef __OBJC__  
  #import <Security/Security.h>  
  #if __IPHONE_OS_VERSION_MIN_REQUIRED    
  #import <SystemConfiguration/SystemConfiguration.h>    
  #import <MobileCoreServices/MobileCoreServices.h>
  #else    
  #import <SystemConfiguration/SystemConfiguration.h>    
  #import <CoreServices/CoreServices.h>
    #endif
    #endif'
  
# Pod Dependencies
  s.dependencies = {'AFNetworking' => ['~> 2.3.1']}
  
end
