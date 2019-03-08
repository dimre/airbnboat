class Profile < ApplicationRecord
  belongs_to :user
  before_create :make_slug
  
  private 

  def make_slug
  	self.username = self.user.first_name + "_" +  self.user.last_name 
    self.slug = self.username.parameterize

    addon = 1 
    until Profile.where(slug: self.slug).empty?
  			self.slug = "#{self.slug}#{addon}" 
  			addon += 1  
  	end
  end
end