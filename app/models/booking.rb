class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cabin
  validates :start_date, prescence: true
  validates :end_date, prescence: true
end
