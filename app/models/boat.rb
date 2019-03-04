class Boat < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :photos, dependent: :destroy
  validates :name, :address, :capacity, :description, :price_per_day, presence: true
end
