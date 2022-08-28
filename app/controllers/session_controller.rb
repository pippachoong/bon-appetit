class SessionController < ApplicationController
  def new
  end

  def create
    # 1. Check that the email address entered is actually in the DB
    user = User.find_by email: params[:email]
    #.authenticate come from the user model
    if user.present? && user.authenticate( params[:password])

    session[:user_id] = user.id 
    redirect_to root_path #back to /

    else

    flash[:error] = 'Invalid emaill address or password'
    redirect_to login_path 
    end 
  end

  def destroy

     #logging user out
    session[:user_id] = nil 
    redirect_to login_path #back to the login page

  end
end
