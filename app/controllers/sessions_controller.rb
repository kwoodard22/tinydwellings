class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create

  def new
  end

  def create
    user = User.from_omniauth(auth_hash)
    session[:user_id] = user.id
    redirect_to root_url, notice: "Sucessfully signed in."
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Successfully signed out."
  end

  def failure
    redirect_to root_url, alert: "Authentication failed, please try again."
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
