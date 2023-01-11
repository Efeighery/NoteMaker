class PasswordsController < ApplicationController
    # allows only logged in users
    before_action :require_user_logged_in!
    def edit; end
    def update
      # update user password
      if Current.auth.update(password_params)
        redirect_to root_path, notice: 'Password Updated'
      else
        render :edit
      end
    end
    private
    def password_params
      params.require(:auth).permit(:password, :password_confirmation)
    end
  end