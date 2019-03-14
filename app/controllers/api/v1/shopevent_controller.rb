class Api::V1::ShopeventController < ApplicationController


    def index
     @shopevents = Shopevent.all
     render json: @shopevents
   end

   def show
     @shopevent = Shopevent.find(params[:id])
     render json: @shopevent, status: :accepted
   end

   def new
     @shopevent = Shopevent.new
   end

   def create
     @shopevent = Shopevent.create(shopevent_params)
     if @shopevent.valid?
       render json: @shopevent, status: :accepted
     else
       render json: { errors: @shopevent.errors.full_messages }, status: :unprocessible_entity
     end
   end

   def edit
     @shopevent = Shopevent.find(params[:id])
     @shopevent.update(shopevent_params)
     render json: @shopevent, status: :accepted
   end

   def update
     @shopevent = Shopevent.find(params[:id])
     @shopevent.update(shopevent_params)
     if @shopevent.save
       render json: @shopevent, status: :accepted
     else
       render json: { errors: @shopevent.errors.full_messages }, status: :unprocessible_entity
     end
   end

   def destroy
     @shopevent = Shopevent.find(params[:id])
     @shopevent.destroy
   end

   private

   def shopevent_params
     params.require(:shopevent).permit(:name)
   end

end
