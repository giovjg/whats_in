class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    if params[:search].present?
      @dishes = Dish.joins(
        :dish_ingredients
      ).where.not("dish_ingredients.ingredient_id IN (?)", ingredient_params[:ingredients])
      @restaurants = Restaurant.joins(:dishes).where(dishes: { id: @dishes.pluck(:id) }).distinct
      @markers = @restaurants.geocoded.map do |restaurant|
        {
          lat: restaurant.latitude,
          lng: restaurant.longitude
        }
      end
      # SELECT DISTINCT * restaurants JOINS dishes on dishes.restaurant_id = restaurants.id
      # WHERE dishes.id IN (1, 3, 4, 5)
    else
      @restaurants = Restaurant.all
      @markers = @restaurants.geocoded.map do |restaurant|
        {
          lat: restaurant.latitude,
          lng: restaurant.longitude
        }
      end
    end
  end

  def show
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :photo, :category, :rating, :price, :wifi, :adaptability, :start_time, :end_time)
  end

  def ingredient_params
    params.require(:search).permit(ingredients: [])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
