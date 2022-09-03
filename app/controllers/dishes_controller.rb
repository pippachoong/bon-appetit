class DishesController < ApplicationController
  # DO NOT SEND user_ids THROUGH A FORM! Anyone can change form data from the dev tools!
  # User @current user. id here to associate with a user - this assumes that the current action is locked down by before_action :check_if_logged_in

  before_action :check_if_logged_in, except: [ :index, :show] 

  # CREATE ----------
  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new dish_params
    @dish.user_id = @current_user.id
    
    # Check if a file was uploaded via the form, and if so,
    # and then forward that file ID it gives us back, into the 
    # recipebook object
    if params[:dish][:image].present?
      # upload to Cloudinary and capture the response, which includes a new ID
      response = Cloudinary::Uploader.upload params[:dish][:image]
      @dish.image = response["public_id"]#view in iTerm/terminal
    end # image upload
    
    @dish.save #this is actually the create, the DB insert
    
    # look up the categories selected in form checkboxes and associate them with this new dish
    # @dish.categories only takes in object and cannot take in ids. So .find will convert into objects for us
    @dish.categories << Category.find(params[:category_ids])
    #                     arguments of categories objects^^



    # check for validation errors
    if @dish.persisted?
      redirect_to dishes_path
    else 
      render :new 
    end

  end

  # READ ----------
  def index
    @dishes = Dish.all
    
    
  end

  def show
    # raise 'hell'
    @dish =  Dish.find params[:id]
    @comment  = Comment.new
    @dish_comments = Comment.where(dish_id: params[:id])
    # [comment1, comment2]
    # commment1 = {
    #   review: "delicious",
    #   user: "Mike"
    #   dish_id: "91"
    # }
    
  end

  # UPDATE ----------
  def edit
    @dish =  Dish.find params[:id]

    # check if @current_user.owns (@dish)
    if @dish.user_id != @current_user.id
      redirect_to login_path
    end


  end

  def update
    @dish = Dish.find params[:id]

    redirect_to dish_path(dish.id)
    # check if @current_user.owns (@dish)
    if @dish.user_id != @current_user.id
      redirect_to login_path
      return #this is to stop code from running the next step
    end

    if params[:dish][:image].present?
      # upload to Cloudinary and capture the response, which includes a new ID
      response = Cloudinary::Uploader.upload params[:dish][:image]
      @dish.image = response["public_id"]#view in iTerm/terminal
    end # image upload

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
    params.require(:dish).permit(:name, :servings,:cooking_time,:ingredients, :methods)
  end

end
