class Api::V1::EventsController < ApplicationController

  def index
   @events = Event.all
   render json: @events
 end

 def show
   @event = Event.find(params[:id])
   render json: @event, status: :accepted
 end

 def new
   @event = Event.new
 end

 def create
   @event = Event.create(event_params)
   if @event.valid?
     render json: @event, status: :accepted
   else
     render json: { errors: @event.errors.full_messages }, status: :unprocessible_entity
   end
 end

 def edit
   @event = Event.find(params[:id])
   @event.update(event_params)
   render json: @event, status: :accepted
 end

 def update
   @event = Event.find(params[:id])
   @event.update(event_params)
   if @event.save
     render json: @event, status: :accepted
   else
     render json: { errors: @event.errors.full_messages }, status: :unprocessible_entity
   end
 end

 def destroy
   @event = Event.find(params[:id])
   @event.destroy
 end

 private

 def event_params
   params.require(:event).permit(:name, :eventType, :eventStart, :eventEnd, :user_id)
 end

end
