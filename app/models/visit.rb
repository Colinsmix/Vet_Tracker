class Visit < ActiveRecord::Base
  extend TimeSplitter::Accessors
  split_accessor :appointment

  mount_uploader :pet_records, PetRecordsUploader

  belongs_to :pet


  validates_presence_of :pet_id
  validates_presence_of :name
  validates_presence_of :appointment

end
