class EventItemsController < ApplicationController
    before_action :set_event_item, only: %i[show update destroy]
  
    # GET /event_items
    def index
      @event_items = EventItem.all
      render json: @event_items
    end
  
    # POST /event_items
    def create
      @event_item = EventItem.new(event_item_params)
      if @event_item.save
        render json: @event_item, status: :created, location: @event_item
      else
        render json: @event_item.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /event_items/1
    def update
      if @event_item.update(event_item_params)
        render json: @event_item
      else
        render json: @event_item.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /event_items/1
    def destroy
      @event_item.destroy
    end
  
    private
  
    def set_event_item
      @event_item = EventItem.find(params[:id])
    end
  
    def event_item_params
      params.require(:event_item).permit(:date, :time, :title, :link)
    end
  end
  