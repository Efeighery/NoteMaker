class ApplicationController < ActionController::Base
    before_action :set_current_user
    def set_current_user
      # finds user with session data and stores it if present
      Current.auth = Auth.find_by(id: session[:auth_id]) if session[:auth_id]
    end
    def require_user_logged_in!
      # allows only logged in user
      redirect_to sign_in_path, alert: 'You must be signed in' if Current.auth.nil?
    end
end
