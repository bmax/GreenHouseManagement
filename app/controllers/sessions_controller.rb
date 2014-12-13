class SessionsController < ApplicationController
  before_action :check_auth, except: :destroy

  def check_auth
    redirect_to root_url, notice: "You're already logged in, silly bear!" if current_user 
  end
    
  def new
  end
  
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in"
    else
      flash.now.alert = "Authorization failed"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged Out!"
  end
end
