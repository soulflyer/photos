class Shoot < ActiveRecord::Base
  has_many :photos
  attr_accessible :name, :original_name, :shoot_description, :shoot_date
end
