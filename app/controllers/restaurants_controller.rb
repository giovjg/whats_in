class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    if params[:user].present?
      @ingredients_query = ingredient_params[:ingredient_ids]
      @dishes = Dish.joins(
        :dish_ingredients
      ).where.not("dish_ingredients.ingredient_id IN (?)", ingredient_params[:ingredient_ids])
      @restaurants = Restaurant.joins(:dishes).where(dishes: { id: @dishes.pluck(:id) }).distinct

    # SELECT DISTINCT * restaurants JOINS dishes on dishes.restaurant_id = restaurants.id
    # WHERE dishes.id IN (1, 3, 4, 5)
    elsif user_signed_in?
      @ingredients_query = current_user.ingredients.pluck(:id)
      @dishes = Dish.joins(
        :dish_ingredients
      ).where.not("dish_ingredients.ingredient_id IN (?)", @ingredients_query)
      @restaurants = Restaurant.joins(:dishes).where(dishes: { id: @dishes.pluck(:id) }).distinct
    else
      @restaurants = Restaurant.all
    end

    if params[:address]
      @restaurants = @restaurants.near(params[:address], 1.5)
    end
    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        info_window: render_to_string(partial: "info_window", locals: { restaurant: restaurant }),
        #image_url: helpers.asset_url("cloudinary://817351874799989:jsbX6mdPIu7YdvgoX__wUdJ0Htw@ddamh5wea")
      }
    end
  end

  def show
    if params[:user].present? && params[:user][:ingredient_ids].present?
      @dishes = @restaurant.dishes.joins(
        :dish_ingredients
      ).where.not("dish_ingredients.ingredient_id IN (?)", ingredient_params[:ingredient_ids])
    else
      @dishes = @restaurant.dishes.includes(dish_ingredients: :ingredient)
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :photo, :category, :rating, :price, :wifi, :adaptability, :start_time, :end_time)
  end

  def ingredient_params
    params.require(:user).permit(ingredient_ids: [])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
