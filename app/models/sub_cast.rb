class SubCast < ActiveRecord::Base
  attr_accessible :subcast_name, :subcast_des, :subcast_active, :cast
  belongs_to :cast
  has_many :students
end
