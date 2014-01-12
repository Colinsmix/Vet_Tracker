class RemoveTypesAndBreeds < ActiveRecord::Migration
  def up
    drop_table :types
    drop_table :breeds
  end

  def down

  end
end
