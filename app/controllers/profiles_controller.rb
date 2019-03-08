class ProfilesController < ApplicationController
  
  def show
    @profile = Profile.find_by(slug: params[:slug])
  end

  private


end