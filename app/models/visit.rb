class Visit < ActiveRecord::Base
  mount_uploader :pet_records, PetRecordsUploader

  belongs_to :pet


  validates_presence_of :pet_id
  validates_presence_of :name
  validates_presence_of :appointment

end
