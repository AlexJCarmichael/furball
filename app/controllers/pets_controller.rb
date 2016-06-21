class PetsController < ApplicationController
  def index
    render json: Pet.all
  end

  def show
    render json: get_pet
  end

  def create
    pet = Pet.create!(pet_params)
    render json: pet
  end

private
 def get_pet
   Pet.find(params.fetch(:id))
 end

 def pet_params
   params.require(:pet).permit(:name, :desc, :category, :breed, :weight, :user_id)
 end
end
