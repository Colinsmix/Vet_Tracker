class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.integer :type_id, null: false
      t.integer :breed_id 

      t.timestamps
    end
  end
end
