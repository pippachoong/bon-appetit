class RecipebooksController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show] 

  # a new seperate page for recipebook dropdown -----------------
  def add_dish
    
    @dish = Dish.find params[:dish_id]
    @recipebook = Recipebook.find params[:recipebook][:id]

    # rb1.dishes << d1
    # only add the dish if it's not already there
    if @recipebook.dishes.include? @dish 
      flash[:error] = 'Psst! You have already saved this dish to this recipe book'
    else 
      @recipebook.dishes << @dish
      flash[:success] = ' Added to to the recipe book!'
    end

    redirect_to dish_path(@dish.id)
  end
#-----------remove dish--------------
  def remove_dish
    
    @dish = Dish.find params[:dish_id]
    @recipebook = Recipebook.find params[:recipebook_id]

    # validates if recipe book has dish, delete it
    if @recipebook.dishes.include? @dish 
      @recipebook.dishes.delete(@dish)
    end

    redirect_to recipebook_path(@recipebook.id)
  end
  #---------------------------------------------
  
  def new
    @recipebook = Recipebook.new
  end

  def create
    # raise 'hell' # so we can inspect params

    # prevent people from changing form data from the dev tools!
    # User @current user. id here to associate with a user - this assumes that the current action is locked down by 
    # before_action :check_if_logged_in

      
    @recipebook = Recipebook.create recipebook_params
    @recipebook.user_id = @current_user.id 

    # Check if a file was uploaded via the form, and if so,
    # and then forward that file ID it gives us back, into the 
    # object
    if params[:recipebook][:image].present?
      # upload to Cloudinary and capture the response, which includes a new ID
      response = Cloudinary::Uploader.upload params[:recipebook][:image]
      @recipebook.image = response["public_id"]#view in iTerm/terminal
    end # image upload


    @recipebook.save #this is actually the create, the DB insert
    if @recipebook.persisted?
      redirect_to recipebooks_path
    else 
      render :new 
    end


  end

  def index

     @recipebooks = Recipebook.all
  end

  def show
    @recipebook = Recipebook.find params[:id]
  end

  def edit
     @recipebook = Recipebook.find params[:id]

     #dont even show the edit from if the 
    #recipebook doesnt belong to this user
    
    #TODO: model method in models/user.rb:
    # if @current_user.owns (@recipebook)
    if @recipebook.user_id != @current_user.id
      redirect_to login_path
    end

  end

  def update

    @recipebook = Recipebook.find params[:id]
    #check AGAIN that this recipebook belongs to the logged-in user, since people can still work out the edit URL even if they arent shown it
    if @recipebook.user_id != @current_user.id
      redirect_to login_path
      return
      #STOP THE REST OF THE CODE FROM RUNNING
      #i.e. prevent .update that follows
      # Note: a redirect_to does Not on its own
      #prevent the rest of the controller's action's
      #code from running
    end

    if @recipebook.update recipebook_params
      redirect_to recipebook_path(@recipebook)
    else
      render :edit
    end
  end

  def destroy
    Recipebook.destroy params[:id]
     redirect_to recipebooks_path #index
  end

  #----------
  private

  #strong params - used to increate security of data sent through forms
  def recipebook_params
    params.require(:recipebook).permit(:name, :user_id, :dish_id)
  end

end
