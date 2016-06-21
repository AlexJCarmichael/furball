class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: get_user
  end

private
 def get_user
   User.find(params.fetch(:id))
 end

  def user_params
    params.require(:user).permit(:name, :user_name, :password, :address, :cell_number, :email, :zip_code, :profile_image)
  end
end
