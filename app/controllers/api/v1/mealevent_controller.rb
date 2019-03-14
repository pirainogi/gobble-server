class Api::V1::MealeventController < ApplicationController


    def index
     @mealevents = Mealevent.all
     render json: @mealevents
   end

   def show
     @mealevent = Mealevent.find(params[:id])
     render json: @mealevent, status: :accepted
   end

   def new
     @mealevent = Mealevent.new
   end

   def create
     @mealevent = Mealevent.create(mealevent_params)
     if @mealevent.valid?
       render json: @mealevent, status: :accepted
     else
       render json: { errors: @mealevent.errors.full_messages }, status: :unprocessible_entity
     end
   end

   def edit
     @mealevent = Mealevent.find(params[:id])
     @mealevent.update(mealevent_params)
     render json: @mealevent, status: :accepted
   end

   def update
     @mealevent = Mealevent.find(params[:id])
     @mealevent.update(mealevent_params)
     if @mealevent.save
       render json: @mealevent, status: :accepted
     else
       render json: { errors: @mealevent.errors.full_messages }, status: :unprocessible_entity
     end
   end

   def destroy
     @mealevent = Mealevent.find(params[:id])
     @mealevent.destroy
   end

   private

   def mealevent_params
     params.require(:mealevent).permit(:name)
   end

end
