# app/models/slide_image.rb
class SlideImage < ApplicationRecord
    validates :url, presence: true
    mount_uploader :url, ImageUploader
  end
  