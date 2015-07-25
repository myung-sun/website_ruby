class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase) #JY: find a user by using find_by method and assign it to 'user' variable
    if user && user.authenticate(params[:session][:password]) #JY: authenticate method matches database with given email(assigned at user).
      log_in(user)
      redirect_to user
    else
      flash.now[:danger] = "invalid email/password combination" #JY: outputs one time message using flash method. *note: I used .now  
      render 'new'
    end
  end

  def dstroy
    log_out
    redirect_to root_url
  end
end
