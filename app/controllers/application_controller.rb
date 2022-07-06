class ApplicationController < ActionController::Base
 
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :initialize_session
  before_action :load_watchlist
               
  
    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :avatar) }
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password, :avatar) }
    end
    
    private

    def initialize_session
      session[:watchlist] ||= [] # empty watchlist = empty array
    end

    def load_watchlist
      @watchlist = Listing.find(session[:watchlist])
    end
end