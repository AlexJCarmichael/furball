require 'base64'

class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: get_user
  end

  def create
    user = User.new(user_params)
    user.profile_image = StringIO.new(Base64.decode64(params.fetch(:user).fetch(:profile_image)))
    if user.save
      render json: user
    else
      render json: { msg: user.errors }, status: 422
    end
  end

private
 def get_user
   User.find(params.fetch(:id))
 end

  def user_params
    params.require(:user).permit(:name, :user_name, :password, :address, :cell_number, :email, :zip_code, :profile_image)
  end
end
