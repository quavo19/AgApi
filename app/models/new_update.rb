# app/models/new_update.rb
class NewUpdate < ApplicationRecord
    validates :image, :profile_name, :profile_poss, :profile_description, presence: true
    mount_uploader :image, ImageUploader
  end
  