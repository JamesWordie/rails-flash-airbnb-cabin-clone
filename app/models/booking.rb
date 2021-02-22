class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cabin

  # Validate presence for each field
  validates :user, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :cabin_id, presence: true

  # Validate presence for each field
  validates :user, uniqueness: true
  validates :start_date, uniqueness: true
  validates :end_date, uniqueness: true
  validates :cabin_id, uniqueness: true
end
