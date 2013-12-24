class AddDatesToPets < ActiveRecord::Migration
  def up
    add_column :pets, :last_seen, :date
    add_column :pets, :next_appt, :date
  end

  def down
    remove_column :pets, :last_seen
    remove_column :pets, :next_appt
  end
end
