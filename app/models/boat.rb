class Boat < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :photos, dependent: :destroy
  belongs_to :user
  validates :name, :address, :country, :capacity, :description, :price_per_day, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
