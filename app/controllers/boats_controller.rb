class BoatsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @boats = Boat.all
    if params[:country]
      @boats = @boats.where('country LIKE ?', "#{params[:country]}")
    end
    if params[:user_id] == current_user.id
      @boats = @boats.where(user: current_user)
    end
  end

  def show
    @boat = Boat.find(params[:id])
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
