class AddPetRecordToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :pet_records, :string
  end
end
