class Member < ActiveRecord::Base
  validates :first_name, :presence => true
  
  has_many :membergroups
  has_many :groups, :through => :membergroups
  
end
