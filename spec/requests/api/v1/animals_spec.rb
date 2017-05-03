require 'rails_helper'

describe 'Animals' do

  it 'can list out all of the animals' do
    species = Species.create(name: 'Canine')
    species.animals.create([{name: 'Fido'}, {name: 'George'}, {name: 'Spot'}])

    get '/api/v1/animals'

    json =  JSON.parse(response.body)

    expect(json.length).to eq(3)
  end

end
