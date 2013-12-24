class Type < ActiveRecord::Base
  has_many :pets
  has_many :breeds
  
  validates_presence_of :name

  validates_uniqueness_of :name
end
