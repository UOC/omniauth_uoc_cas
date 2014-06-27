require 'omniauth'
require 'omniauth-cas'
module OmniAuth
  module Strategies
    class UocCas < OmniAuth::Strategies::CAS
      include OmniAuth::Strategy

      def initialize(app, options = {}, &block)
        options = {  
         :name => :uoc_cas,
         :host => 'cv.uoc.edu',
         :login_url => '/webapps/cas/login',
         :logout_url => '/webapps/cas/logout',
         :service_validate_url => '/webapps/cas/serviceValidate',
         :name_key => 'fullName',
        }.merge(options);

        if Rails.env.staging?
          options[:host] = 'cv-pre.uoc.edu' 
          options[:disable_ssl_verification] = true
          options[:ssl] = false
        end
        
        if Rails.env.test? of Rails.env.development?
          options[:host] = 'cv-test.uoc.edu' 
          options[:disable_ssl_verification] = true
          options[:ssl] = false
        end 

        super(app, options, &block)
      end
    end
  end
end
