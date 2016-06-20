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
end
