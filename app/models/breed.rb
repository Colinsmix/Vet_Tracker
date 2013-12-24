class Breed < ActiveRecord::Base
  has_many :pets
  belongs_to :type

  validates_presence_of :name
  validates_presence_of :type_id

  validates_uniqueness_of :name, :scope => :type_id
end
