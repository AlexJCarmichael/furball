class PetsController < ApplicationController
  def index
    render json: Pet.all
  end

  def show
    render json: get_pet
  end

  def create
    pet = Pet.new(pet_params)
    if pet.save
      render json: pet
    else
      render json: { msg: pet.errors }, status: 422
    end
  end

private
 def get_pet
   Pet.find(params.fetch(:id))
 end

 def pet_params
   params.require(:pet).permit(:name, :desc, :category, :breed, :weight, :user_id)
 end
end
