# app/models/event_item.rb
class EventItem < ApplicationRecord
    validates :date, :time, :title, presence: true
  end
  