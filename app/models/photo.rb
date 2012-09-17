class Photo < ActiveRecord::Base
  belongs_to :shoot
  attr_accessible :fullsize, :original, :shoot_id, :thumb, :watermarked
end
