class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

include Pundit
rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
protect_from_forgery with: :exception


    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :birthday, :email, :password, :role, :remember_me])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :email, :password, :remember_me])
        devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :birthday, :email, :password, :current_password, :role, :remember_me])
    end



    private

    def user_not_authorized
        flash[:alert] = "Access Denied"
        redirect_to (request.referrer || root_path)
    end




end
