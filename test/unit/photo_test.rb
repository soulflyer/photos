require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "must have at least a name entry" do
    photo = Photo.new
    assert photo.invalid?
    assert photo.errors[:name].any?
    assert photo.errors[:shoot_id].any?
    photo.name = "/tmp/pic.jpg"
    photo.shoot_id = 1
    assert photo.valid?
  end

  test "photo should return full path names for fullsize, master, thumb and published" do
    photo = Photo.new
    photo.name = "pic.jpg"
    shoot = Shoot.new
    photo.shoot = shoot
    photo.master=("nef")
    shoot.public = "/tmp/public/testshoot"
    shoot.private = "/tmp/private/testshoot"
    assert photo.fullsize == "/tmp/private/testshoot/pic.jpg", "Incorrect fullsize path"
    assert photo.thumb == "/tmp/public/testshoot/thumbs/pic.jpg", "Incorrect thumb path"
    assert photo.master == "/tmp/private/testshoot/masters/pic.nef", "Incorrect master path"
    assert photo.published == "/tmp/public/testshoot/pic.jpg", "Incorrect published path"
  end
end
