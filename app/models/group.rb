class Group < ActiveRecord::Base
  validates :name, :presence => true
  
  has_many :membergroups
  has_many :members, :through => :membergroups
end
