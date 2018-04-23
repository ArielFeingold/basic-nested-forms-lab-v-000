class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(first_ingredient)
    @recipe.ingredients.build(second_ingredient)
  end

  def create
  end
end
