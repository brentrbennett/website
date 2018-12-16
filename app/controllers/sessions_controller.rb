class SessionsController < ApplicationController
  skip_before_action :authorize
  layout 'new', only: [:login_path]

  def new

  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert:'Invalid credentials'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, alert: "Successfully Logged Out"
  end
end
