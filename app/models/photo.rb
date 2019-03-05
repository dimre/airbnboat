class Photo < ApplicationRecord
  belongs_to :boat
  mount_uploader :photo_url, PhotoUploader
  validates :photo_url, presence: true
end
