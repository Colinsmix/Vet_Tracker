class ChangeDatetimeOnAppointment < ActiveRecord::Migration
  def up
    remove_column :visits, :appointment
    add_column :visits, :appointment, :datetime, null: false
  end

  def down
    remove_column :visits, :appointment
    add_column :visits, :apppointment, :time, null: false
  end
end
