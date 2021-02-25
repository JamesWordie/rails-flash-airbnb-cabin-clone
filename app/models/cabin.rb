class Cabin < ApplicationRecord

belongs_to :user
has_many :bookings
has_many :reviews, through: :bookings

# Validate presence and uniqueness for each field
validates :name, presence: true
# validates :description, presence: true, uniqueness: true
# validates :price_per_night, presence: true, uniqueness: true
# validates :number_of_guests, presence: true, uniqueness: true
# validates :location, presence: true, uniqueness: true

end
