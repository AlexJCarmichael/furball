class PetsController < ApplicationController
  def index
    render json: Pet.all
  end

  def show
    render json: get_pet
  end

private
 def get_pet
   Pet.find(params.fetch(:id))
 end
end
