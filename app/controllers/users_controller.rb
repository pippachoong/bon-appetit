class UsersController < ApplicationController
  # CREATE ----------
  def new
    @user = User.new 
  end

  def create
    @user = User.create user_params # filtered list of fields

    if @user.persisted?
      session[:user_id] = @user.id #LOGIN automatically
      redirect_to user_path(@user.id) #go to user's profile page
    else
      render :new 
      #this does NOT run the new() method above, just shows the template at the template for the current 'create' method
    end
  end

  # READ ---------- 
  def index
     @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  # UPDATE ---------- 
  def edit
     @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user

    redirect_to user(user.id)

  end
  
  # DESTROY ----------
  def destroy

    User.destroy params[:id]
    redirect_to users_path
  end


###########
  private

  # To reduce the chance of bad people trying to insert things into the database, we can use strong parameters to disallow all but the fields we have whitelisted

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


end
