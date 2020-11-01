class PostCommentsController < ApplicationController

  def create
    recipe = Recipe.find(params[:recipe_id])
    comment = PostComment.new(post_comment_params)
    comment.user_id = current_user.id
    comment.recipe_id = recipe.id
    comment.save
    redirect_to recipe_path(recipe)
  end

  def destroy
    PostComment.find_by(id: params[:id], recipe_id: params[:recipe_id]).destroy
    redirect_to recipe_path(params[:recipe_id])
  end

  private
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

end
