class UsersController < ApplicationController
  def update_profile
    if params[:user]
      current_user.allergies.destroy_all
      current_user.update!(user_params)
      redirect_to profile_users_path, notice: "Updated profile with undesired ingredients."
    end
  end

  def profile
  end

  private

  def user_params
    params.require(:user).permit(ingredient_ids: [])
  end

  def ingredient_params
    params.require(:save).permit(ingredients: [])
  end
end
