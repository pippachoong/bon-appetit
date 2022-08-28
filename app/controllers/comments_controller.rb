class CommentsController < ApplicationController
  
#     def create
#         @dish = Dish.find(params[:dish_id])
#         @comment = @dish.comments.new comment_params

#         respond_to do |format|
#             if @comment.save
#                 format.html { redirect_to @dish, notice: 'Comment was successfully created.' } # changed the redirect to @dish
#             end
#         end
#     end

#     private
#     def comment_params
#         params.require(:comment).permit(:review)
#     end
# end
