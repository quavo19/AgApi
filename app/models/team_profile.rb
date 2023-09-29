# app/models/team_profile.rb
class TeamProfile < ApplicationRecord
    validates :image, :profile_name, :profile_poss, :profile_description, presence: true
    mount_uploader :image, ImageUploader
end
  