class CategoriesController < ApplicationController

  before_action :check_if_logged_in, except: [ :index, :show] 
  
  def new
  end

  def create
  end

  def index
   
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
