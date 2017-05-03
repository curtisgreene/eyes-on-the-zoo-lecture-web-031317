class CreateSpecies < ActiveRecord::Migration[5.0]
  def change
    create_table :species do |t|
      t.string :name
      t.integer :endangered_status
      t.string :country
      t.string :classification

      t.timestamps
    end
  end
end
