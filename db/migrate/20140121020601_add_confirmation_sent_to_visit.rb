class AddConfirmationSentToVisit < ActiveRecord::Migration
  def up
    add_column :visits, :confirmation_sent, :boolean, default: false
  end

  def down
    remove_column :visits, :confirmation_sent
  end
end
