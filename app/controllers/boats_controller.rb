class BoatsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:country]
      @boats = Boat.where('country LIKE ?', "#{params[:country]}")
    else
      @boats = Boat.all
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
    if @boat.save
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
end
