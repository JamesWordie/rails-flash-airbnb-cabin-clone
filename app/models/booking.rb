class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cabin
  has_many :reviews, dependent: :destroy

  validates :start_date, presence: true
  validates :end_date, presence: true
  STATUSOPTIONS = ["accepted", "pending", "declined"]
end
