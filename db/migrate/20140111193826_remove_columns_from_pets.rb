class RemoveColumnsFromPets < ActiveRecord::Migration
  def change
    remove_column :pets, :type_id
    remove_column :pets, :breed_id
    remove_column :pets, :last_seen
  end
end
