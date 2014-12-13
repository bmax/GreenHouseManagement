class UsersController < ApplicationController
  def index
    if !current_user  
      render "sessions/new"
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, notice: "Registered!"
    else
      render "new"
    end
  end
  def user_params
    params.required(:user).permit(:email, :password)
  end
end
