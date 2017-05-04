require 'rails_helper'

describe 'Animals' do

  context 'listing all animals' do

  it 'can list out all of the animals' do
    species = Species.create(name: 'Canine')
    species.animals.create([{name: 'Fido'}, {name: 'George'}, {name: 'Spot'}])

    get '/api/v1/animals'

    json =  JSON.parse(response.body)

    expect(json.length).to eq(3)
  end

  end


  context 'creating animals' do

    before do
      post '/api/v1/animals', params: { animal_name: 'Fido', species_name: 'Dog' }
    end

    it 'can create a brand new animal' do
      animal = Animal.last
      expect(animal.name).to eq('Fido')
    end

    it 'also can create a species by name' do
      animal = Animal.last
      expect(animal.species.name).to eq('Dog')
    end

  end



end
