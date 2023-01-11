class RegistrationsController < ApplicationController
    # instantiates new user
    def new
      @auth = Auth.new
    end
    def create
      @auth = Auth.new(auth_params)
      if @auth.save
      # stores saved user id in a session
        session[:auth_id] = @auth.id
        redirect_to root_path, notice: 'Successfully created account'
      else
        render :new
      end
    end
    private
    def auth_params
      # strong parameters
      params.require(:auth).permit(:email, :password, :password_confirmation)
    end
  end