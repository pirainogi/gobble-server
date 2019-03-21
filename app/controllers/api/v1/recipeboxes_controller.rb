class Api::V1::RecipeboxesController < ApplicationController

  def index
    @recipeboxes = Recipebox.all
    render json: @recipeboxes
  end

  def show
    @recipebox = Recipebox.find(params[:id])
    render json: @recipebox, status: :accepted
  end

  # def new
  #   @recipebox = Recipebox.new
  # end

  def create
    byebug
    @recipebox = Recipebox.create(recipebox_params)
    if @recipebox.valid?
      render json: @recipebox, status: :accepted
    else
      render json: { errors: @recipebox.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # def edit
  #   @recipebox = Recipebox.find(params[:id])
  #   @recipebox.update(recipebox_params)
  #   render json: @recipebox, status: :accepted
  # end
  #
  # def update
  #   @recipebox.update(recipebox_params)
  #   if @recipebox.save
  #     render json: @recipebox, status: :accepted
  #   else
  #     render json: { errors: @recipebox.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end


private

def recipebox_params
  params.require(:recipebox).permit(:recipe_id, :user_id)
end

end
