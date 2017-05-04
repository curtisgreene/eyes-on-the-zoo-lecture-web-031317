class Api::V1::AnimalsController < ApplicationController

  def index
    animals = Animal.all
    render json: animals
  end

  def create
    species = Species.find_or_create_by(name: params[:species_name])
    animal = species.animals.create(name: params[:animal_name])
    render json: animal
  end


end
