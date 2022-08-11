class Car < ApplicationRecord
  has_many :reservations

  validates :name, presence: true
  validates :model, presence: true
  validates :desc, presence: true
  validates :image, presence: true
  validates :rent, presence: true
end
