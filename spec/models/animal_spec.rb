require 'rails_helper'

RSpec.describe Animal, type: :model do

  it 'should have a name' do
    animal = Animal.new(name: 'Fido')
    expect(animal.name).to eq('Fido')
  end

  it 'should have a gender' do
    animal = Animal.new(gender: 'M')
    expect(animal.gender).to eq('M')
  end

  it 'should belong to a species' do
    species = Species.create(name: 'Panda Bear')
    animal = Animal.new(species: species)
    expect(animal.species).to eq(species)
  end
end
