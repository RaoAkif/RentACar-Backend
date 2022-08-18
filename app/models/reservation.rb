class Reservation < ApplicationRecord
  has_one :car
  belongs_to :user
  belongs_to :car

  validates :city, :date, presence: true
  validates :user_id, presence: true
  validates :car_id, presence: true
end
