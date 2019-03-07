class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @boats = Boat.all
    if params[:country]
    end
    if current_user && params[:user_id].to_i == current_user.id
      @boats = @boats.where(user: current_user)
    end
    if params[:min_price] && params[:max_price]
      @boats = @boats.where(price_per_day: params[:min_price]..params[:max_price])
    end 
    if params[:capacity_low] && params[:capacity_high]
      @boats = @boats.where(capacity: params[:capacity_low]..params[:capacity_high])
    end
  end

  def show
    @boat = Boat.find(params[:id])
    @markers = 
      [{
        lng: @boat.longitude,
        lat: @boat.latitude
      }]
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save!
      redirect_to @boat
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to boats_path
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :address, :country, :capacity, :description, :price_per_day, :photo_url)
  end
end
