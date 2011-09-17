class Cast < ActiveRecord::Base
  attr_accessible :cast_name, :cast_des, :cast_active
  has_many :sub_casts
end
