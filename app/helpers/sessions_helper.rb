module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) #||= is Ruby expression of or equal.
  end

  # Returns true if the user is logged in, false otherwise.

  def logged_in?
    !current_user.nil? 
  end

  #empty current user so one can log out
  def log_out
  session.delete(:user_id)
  @current_user = nil
  end
end
