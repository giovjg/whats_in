class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    if params[:search].present?
      @ingredients_query = ingredient_params[:ingredients]
      @dishes = Dish.joins(
        :dish_ingredients
      ).where.not("dish_ingredients.ingredient_id IN (?)", ingredient_params[:ingredients])
      @restaurants = Restaurant.joins(:dishes).where(dishes: { id: @dishes.pluck(:id) }).distinct
      @markers = @restaurants.geocoded.map do |restaurant|
        {
          lat: restaurant.latitude,
          lng: restaurant.longitude,
          info_window: render_to_string(partial: "info_window", locals: { restaurant: restaurant }),
          image_url: helpers.asset_url("cloudinary://817351874799989:jsbX6mdPIu7YdvgoX__wUdJ0Htw@ddamh5wea")
        }
      end
      # SELECT DISTINCT * restaurants JOINS dishes on dishes.restaurant_id = restaurants.id
      # WHERE dishes.id IN (1, 3, 4, 5)
    else
      @restaurants = Restaurant.all
      @markers = @restaurants.geocoded.map do |restaurant|
        {
          lat: restaurant.latitude,
          lng: restaurant.longitude,
          info_window: render_to_string(partial: "info_window", locals: { restaurant: restaurant }),
          image_url: helpers.asset_url("cloudinary://817351874799989:jsbX6mdPIu7YdvgoX__wUdJ0Htw@ddamh5wea")
        }
      end
    end
  end

  def show
    if params[:search].present? && params[:search][:ingredients].present?
      @dishes = @restaurant.dishes.joins(
        :dish_ingredients
      ).where.not("dish_ingredients.ingredient_id IN (?)", ingredient_params[:ingredients])
    else
      @dishes = @restaurant.dishes.includes(dish_ingredients: :ingredient)
    end
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
