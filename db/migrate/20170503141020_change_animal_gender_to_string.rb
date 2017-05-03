class ChangeAnimalGenderToString < ActiveRecord::Migration[5.0]
  def change
    change_column :animals, :gender, :string
  end
end
