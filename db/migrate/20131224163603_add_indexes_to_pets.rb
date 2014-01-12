class AddIndexesToPets < ActiveRecord::Migration
  def up
    add_index :pets, :user_id
    add_index :pets, :type_id
    add_index :pets, :breed_id
  end

  def down
    remove_index :pets, :user_id
    remove_index :pets, :type_id
    remove_index :pets, :breed_id
  end
end
