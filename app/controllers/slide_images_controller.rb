class SlideImagesController < ApplicationController
    before_action :set_slide_image, only: %i[show update destroy]
  
    # GET /slide_images
    def index
      @slide_images = SlideImage.all
      render json: @slide_images
    end
  
    # POST /slide_images
    def create
      @slide_image = SlideImage.new(slide_image_params)
      if @slide_image.save
        render json: @slide_image, status: :created, location: @slide_image
      else
        render json: @slide_image.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /slide_images/1
    def update
      if @slide_image.update(slide_image_params)
        render json: @slide_image
      else
        render json: @slide_image.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /slide_images/1
    def destroy
      @slide_image.destroy
    end
  
    private
  
    def set_slide_image
      @slide_image = SlideImage.find(params[:id])
    end
  
    def slide_image_params
      params.require(:slide_image).permit(:url)
    end
  end
  
