class PhotosController < ApplicationController
  
  def new
  	@boat = Boat.find(params[:boat_id])
  	@photo = Photo.new
  end

  def create
  	@photo = Photo.new(photo_params)
  	@boat = Boat.find(params[:boat_id]) 
  	@photo.boat = @boat
  	if @photo.save
  		redirect_to boat_path(@boat)
  	else
  		render :new
  	end
  end

  private

  def photo_params
  	params.require(:photo).permit(:photo_url, :photo_url_cache)
  end

end
