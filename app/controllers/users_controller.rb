class UsersController < ApplicationController
  def update_profile
    current_user.allergies.destroy_all
    current_user.update!(user_params)
    redirect_to profile_users_path, notice: "Updated"
  end

  def profile
  end

  private

  def user_params
    params.require(:user).permit(allergies_attributes: [:ingredient_id])
  end

  def ingredient_params
    params.require(:save).permit(ingredients: [])
  end
end
