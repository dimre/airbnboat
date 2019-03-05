class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo_url, PhotoUploader
  has_many :reviews
  has_many :bookings
  has_many :boats, through: :bookings
end
