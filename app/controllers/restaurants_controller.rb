class RestaurantsController < ApplicationController
  # GET /restaurant/1
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # def index
  #   if params[:ingredient]
  #     @restaurants = Restaurant.where.not(params[:ingredient])
  #   else
  #     @restaurants = Restaurant.all
  #   end
  # end

  private

  # Only allow a list of trusted parameters through
  def restaurant_params
    params.require(:resturant).permit(:name, :address, :photo, :category, :rating, :price, :wifi, :adaptability, :start_time, :end_time)
  end

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end
end
