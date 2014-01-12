class Pet < ActiveRecord::Base
  belongs_to :user
  has_many :visits
  accepts_nested_attributes_for :visits


  validates_presence_of :name

  validates_uniqueness_of :name, :scope => :user_id
end
