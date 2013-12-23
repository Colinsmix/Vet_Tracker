class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.string :name, null: false
      t.integer :type_id, null: false

      t.timestamps
    end
  end
end
