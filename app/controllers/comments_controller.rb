class CommentsController < ApplicationController
    
    def create
        @dish =  Dish.find params[:comment][:dish_id]
        Comment.create! comments_params
       redirect_to dish_path(@dish) #at the same dish show page

    end

    def delete
        # Comments.destroy params[:id]
        # redirect_to dish_path(@dish) #at the same dish show page

    end

    private

    def comments_params
        params.require(:comment).permit(:dish_id, :user_id, :review)
    end

end
