class Shoot < ActiveRecord::Base
  has_many :photos
  attr_accessible :name, :original_name, :description, :date
end
