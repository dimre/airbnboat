class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo_url, PhotoUploader
  has_many :reviews
  has_many :bookings
  has_many :boats, through: :bookings
  has_one :profile
  has_many :sent_messages, :class_name => 'Message', :foreign_key => 'sender_id'
  has_many :received_messages, :class_name => 'Message', :foreign_key => 'recipient_id'

  after_create :create_profile 

  def create_profile 
  	Profile.new(user: self).save
  end
  
end
