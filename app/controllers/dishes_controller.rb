class DishesController < ApplicationController
  # DO NOT SEND user_ids THROUGH A FORM! Anyone can change form data from the dev tools!
  # User @current user. id here to associate with a user - this assumes that the current action is locked down by before_action :check_if_logged_in

  before_action :check_if_logged_in, except: [ :index, :show] 

  # CREATE ----------
  def new
    @dish = Dish.new
  end

  def create
    Dish.create! dish_params
    redirect_to dishes_path
  end

  # READ ----------
  def index
    @dishes = Dish.all

  end

  def show
    @dish =  Dish.find params[:id]

  end

  # UPDATE ----------
  def edit
    @dish =  Dish.find params[:id]

    # check if @current_user.owns (@mixtape)
    if @dish.user_id != @current_user.id
      redirect_to login_path
    end


  end

  def update
    @dish = Dish.find params[:id]

    redirect_to dish_path(dish.id)
    # check if @current_user.owns (@mixtape)
    if @dish.user_id != @current_user.id
      redirect_to login_path
      return #this is to stop code from running the next step
    end

    if @dish.update dish_params
      redirect_to dish_path(@dish)
    else
      render :edit  
      #render - this does NOT run the new() method above, just shows the template at the template for the current 'edit' method
    end


  end

  # DESTROY ----------
  def destroy
    Dish.destroy params[:id]
     redirect_to dishes_path #index
  end

  #-----
  private

  #strong params - used to increate security of data sent through forms
  def dish_params
    params.require(:dish).permit(:name,:image, :servings,:cooking_time,:ingredients, :methods, :user_id)
  end

end
