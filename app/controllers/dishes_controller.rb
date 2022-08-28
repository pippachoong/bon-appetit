class DishesController < ApplicationController

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

  end

  def update
    dish = Dish.find params[:id]
    dish.update dish_params

    redirect_to dish_path(dish.id)

  end

  # DESTROY ----------
  def destroy
    Dish.destroy params[:id]
     redirect_to dishes_path #index
  end

  #-----
  private

  def dish_params
    params.require(:dish).permit(:name,:image, :servings,:cooking_time,:ingredients, :methods, :user_id)
  end

end
