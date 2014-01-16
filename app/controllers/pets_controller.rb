class PetsController < ApplicationController
  
  def index
    @pets = Pet.all
    render json: @pets.as_json(only: [:id, :name, :age, :human])
  end
  
  def show
    @pet = Pet.find(params[:id])
    render json: @pet.as_json
  end
end
