class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    flat = Flat.new(flat_params)
    flat.save

    redirect_to root_path
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :guests, :price)
  end
end
