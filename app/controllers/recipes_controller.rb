class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    @recipe.save
    redirect_to recipes_path
    logger.debug @recipe.errors.inspect
  end

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @post_comment = PostComment.new
    
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :infomation, :how_to, :recipe_image)
  end

end
