class Pet < ActiveRecord::Base
  belongs_to :user
  belongs_to :type
  belongs_to :breed

  validates_presence_of :name
  validates_presence_of :type_id

  validates_uniqueness_of :name, :scope => :user_id
end
