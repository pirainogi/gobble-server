class Api::V1::PantriesController < ApplicationController


    def index
      @pantries = Pantry.all
      render json: @pantries
    end

    def show
      @pantry = Pantry.find(params[:id])
      render json: @pantry, status: :accepted
    end

    def new
      @pantry = Pantry.new
    end

    def create
      @pantry = Pantry.create(pantry_params)
      if @pantry.valid?
        render json: @pantry, status: :accepted
      else
        render json: { errors: @pantry.errors.full_messages }, status: :unprocessible_entity
      end
    end

    def edit
      @pantry = Pantry.find(params[:id])
      @pantry.update(pantry_params)
      render json: @pantry, status: :accepted
    end

    def update
      @pantry.update(pantry_params)
      if @pantry.save
        render json: @pantry, status: :accepted
      else
        render json: { errors: @pantry.errors.full_messages }, status: :unprocessible_entity
      end
    end

    def destroy
      @pantry = Pantry.find(params[:id])
      @pantry.destroy
    end


  private

  def pantry_params
    params.permit(:name)
  end

end
