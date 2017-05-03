require 'rails_helper'

RSpec.describe Species, type: :model do

  context 'making new species' do

    it 'should have a name' do
      species = Species.new(name: 'Panda Bear')
      expect(species.name).to eq('Panda Bear')
    end

    it 'should have an endangered status' do
      species = Species.new(endangered_status: 0)
      expect(species.endangered_status).to eq(0)
    end

    it 'should have many animals' do
      species = Species.new
      expect(species.animals).to eq([])
    end
  end

  context 'being endangered' do

    it 'should know if it is not endangered' do
      species = Species.new(endangered_status: 0)
      expect(species.endangered?).to eq(false)
    end

    it 'should know if it is endangered' do
      species = Species.new(endangered_status: 1)
      expect(species.endangered?).to eq(true)
    end
  end
end
