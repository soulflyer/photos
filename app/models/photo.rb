class Photo < ActiveRecord::Base
  belongs_to :shoot
  attr_accessible :name, :shoot_id
  validates :name, :shoot_id, presence: true

  def fullsize
    [shoot.private, name].join('/')
  end

  def thumb
    [shoot.public, name].join('/thumbs/')
  end

  def master
    basename = [File.basename(name, ".*"), master_file_type].join('.')
    [shoot.private, basename].join('/masters/')
  end

  def master= (filetype)
    self.master_file_type = filetype
  end

  def published
    [shoot.public, name].join('/')
  end

end
