class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update]
  def update
    if params[:save].present? && params[:save][:ingredients].present?
      @ingredients_saved = ingredient_params[:ingredients]
      @user = user_params[name: @user.name, ingredients_attributes: @ingredients_saved]
      @user.update
    end
  end

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:survey).permit(:name, :ingredients_attributes[:ingredients[]])
  end

  def ingredient_params
    params.require(:save).permit(ingredients: [])
  end

end
