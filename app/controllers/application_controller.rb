class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!, except: [:home, :about, :contact]
  
    def home
    end
  
    def about
    end
  
    def contact
    end
  
    def secret
    end
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up)
      devise_parameter_sanitizer.permit(:account_update)
    end
end
