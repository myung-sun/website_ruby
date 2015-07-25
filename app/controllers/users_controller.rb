class UsersController < ApplicationController

  def show
    @user = User.find(params[:id]) # JY: get param as an id attribute
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save #JY: check if DB accept the attributes
      log_in @user
      flash[:success] = "Welcome to my website!"
      redirect_to @user
    else
      render 'new' #if not render back to new
    end
  end

  private 

  #JY: Function that only accept valid parameters
  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
