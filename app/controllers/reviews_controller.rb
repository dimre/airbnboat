class ReviewsController < ApplicationController

	def new
		@boat = Boat.find(params[:boat_id])
		@review = Review.new
	end

	def create
	  	@review = Review.new(reviews_params)
	  	@boat = Boat.find(params[:boat_id])
	  	@review.boat = @boat
	  	@review.user = current_user
	  	if @review.save!
	  		redirect_to boat_path(@boat)
	  	else
	  		render :new
	  	end
	end

	private

	def reviews_params
	  	params.require(:review).permit(:content, :rating)
	end

end