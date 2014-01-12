class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :pet_id, null: false
      t.text :decription
      t.string :name, null: false
      t.time :appointment, null: false
      t.timestamps
    end
  end
end
