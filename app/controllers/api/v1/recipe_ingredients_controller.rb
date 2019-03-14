class Api::V1::RecipeIngredientsController < ApplicationController

  def index
    @recipeingredients = RecipeIngredient.all
    render json: @recipeingredients
  end

  def show
    @recipeingredient = RecipeIngredient.find(params[:id])
    render json: @recipeingredient, status: :accepted
  end

end
