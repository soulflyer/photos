class Photo < ActiveRecord::Base
  belongs_to :shoot
  attr_accessible :name, :shoot_id
  validates :name, :shoot_id, presence: true

  def fullsize
    [shoot.public, name].join('/')
  end

  def thumb
    [shoot.public, name].join('/thumbs/')
  end

end
