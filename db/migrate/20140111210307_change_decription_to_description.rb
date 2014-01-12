class ChangeDecriptionToDescription < ActiveRecord::Migration
  def up
    remove_column :visits, :decription
    add_column :visits, :description, :text
  end

  def down
    add_column :visits, :decription, :text
    remove_column :visits, :description
  end
end
