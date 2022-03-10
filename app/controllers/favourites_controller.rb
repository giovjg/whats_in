class FavouritesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_restaurant, only: [:create, :destroy]

  def index
    @favourites = Favourite.all
  end

  def new
    @favourite = Favourite.new
  end

  def create
    @favourite = Favourite.new
    @favourite.restaurant = @restaurant
    @favourite.user = current_user
    @favourite.save
    respond_to do |f|
      f.html { redirect_to restaurant_path(@restaurant) }
      f.text {
              render partial: "favourites/link_destroy_favourite.html.erb",
              locals: {
                restaurant: @restaurant,
                favourite: @favourite
             }
            }
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    respond_to do |f|
      f.html { redirect_to restaurant_path(@restaurant) }
      f.text { render partial: "favourites/link_favourite.html.erb", locals: { restaurant: @restaurant, favourite: @favourite }}
    end
  end

  private


  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
