class Photo < ApplicationRecord
  belongs_to :boat
  validates :photo_url, presence: true
end
