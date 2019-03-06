class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    if params[:user_id]
      @bookings = @bookings.where(user: current_user)
    end
  end

  def show
  end

  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @boat = Boat.find(params[:boat_id])
    @booking.boat = @boat
    @booking.user = current_user
    if @booking.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
