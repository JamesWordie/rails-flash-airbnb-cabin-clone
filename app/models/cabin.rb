class Cabin < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_night, presence: true
  validates :number_of_guests, presence: true
  validates :location, presence: true
  validates :photo, presence: true
  has_one_attached :photo
end
