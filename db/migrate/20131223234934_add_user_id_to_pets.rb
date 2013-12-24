class AddUserIdToPets < ActiveRecord::Migration
  def up
    add_column :pets, :user_id, :integer, null: false
  end

  def down
    remove_column :pets, :user_id
  end
end
