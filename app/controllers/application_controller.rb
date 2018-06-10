class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :birthday, :email, :password, :role, :remember_me])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :email, :password, :remember_me])
        devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :birthday, :email, :password, :current_password, :role, :remember_me])
    end




end
