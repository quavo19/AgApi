class NewUpdatesController < ApplicationController
    before_action :set_new_update, only: %i[show update destroy]
  
    # GET /new_updates
    def index
      @new_updates = NewUpdate.all
      render json: @new_updates
    end
  
    # POST /new_updates
    def create
      @new_update = NewUpdate.new(new_update_params)
      if @new_update.save
        render json: @new_update, status: :created, location: @new_update
      else
        render json: @new_update.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /new_updates/1
    def update
      if @new_update.update(new_update_params)
        render json: @new_update
      else
        render json: @new_update.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /new_updates/1
    def destroy
      @new_update.destroy
    end
  
    private
  
    def set_new_update
      @new_update = NewUpdate.find(params[:id])
    end
  
    def new_update_params
      params.require(:new_update).permit(:image, :profile_name, :profile_poss, :profile_description)
    end
  end
  