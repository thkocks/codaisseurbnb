class Room < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :themes

  validates :home_type, :room_type, :accommodate, :bedroom_count, :bathroom_count, :address,
    presence: true
  validates :listing_name, presence: true, length: {maximum: 50}
  validates :description, presence: true, length: {maximum: 500}

end
