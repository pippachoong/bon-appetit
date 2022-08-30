class RecipebooksController < ApplicationController

  before_action :check_if_logged_in, except: [ :index, :show] 
  def new
    @recipebook = Recipebook.new
  end

  def create

    # prevent people from changing form data from the dev tools!
    # User @current user. id here to associate with a user - this assumes that the current action is locked down by 
    # before_action :check_if_logged_in

      
    @recipebook = Recipebook.create recipebook_params
    @recipebook.user_id = @current_user.id 
    @recipebook.save #this is actually the create, the DB insert
    if recipebook.persisted?
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
  end

  #----------
  private

  #strong params - used to increate security of data sent through forms
  def recipebook_params
    params.require(:recipebook).permit(:name,:image, :user_id)
  end

end