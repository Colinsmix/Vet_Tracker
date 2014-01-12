class AddIndexTypeIdToBreeds < ActiveRecord::Migration
  def up
    add_index :breeds, :type_id
  end

  def down
    remove_index :breeds, :type_id
  end
end
