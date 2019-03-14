class Api::V1::PrepeventController < ApplicationController


    def index
     @prepevents = Prepevent.all
     render json: @prepevents
   end

   def show
     @prepevent = Prepevent.find(params[:id])
     render json: @prepevent, status: :accepted
   end

   def new
     @prepevent = Prepevent.new
   end

   def create
     @prepevent = Prepevent.create(prepevent_params)
     if @prepevent.valid?
       render json: @prepevent, status: :accepted
     else
       render json: { errors: @prepevent.errors.full_messages }, status: :unprocessible_entity
     end
   end

   def edit
     @prepevent = Prepevent.find(params[:id])
     @prepevent.update(prepevent_params)
     render json: @prepevent, status: :accepted
   end

   def update
     @prepevent = Prepevent.find(params[:id])
     @prepevent.update(prepevent_params)
     if @prepevent.save
       render json: @prepevent, status: :accepted
     else
       render json: { errors: @prepevent.errors.full_messages }, status: :unprocessible_entity
     end
   end

   def destroy
     @prepevent = Prepevent.find(params[:id])
     @prepevent.destroy
   end

   private

   def prepevent_params
     params.require(:prepevent).permit(:name)
   end

end
