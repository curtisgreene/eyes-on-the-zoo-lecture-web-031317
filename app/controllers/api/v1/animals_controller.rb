class Api::V1::AnimalsController < ApplicationController

  def index
    animals = Animal.all
    render json: animals
  end

  def create
    # this should create a new animal from params
    # when it's done, it should render the json of the new animal
  end

end
