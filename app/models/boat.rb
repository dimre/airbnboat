class Boat < ApplicationRecord
  include PgSearch

  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :photos, dependent: :destroy
  belongs_to :user
  validates :name, :address, :country, :capacity, :description, :price_per_day, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  pg_search_scope :search_boat,
    against: [:country],
    associated_against: {
      bookings: [:start_date, :end_date]
    }

  def unavailable_dates
    dates_array = bookings.pluck(:start_date, :end_date).map do |range|
    (Date.parse(range[0])..Date.parse(range[1])).to_a
    end
    dates_array.uniq.flatten
  end
end
