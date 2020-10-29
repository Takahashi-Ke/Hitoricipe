class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to recipe_path(@recipe.id)
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :infomation, :how_to)
  end

end
