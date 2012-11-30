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

  test "photo should return full path name for fullsize" do
    photo = Photo.new
    photo.name = "pic.jpg"
    shoot = Shoot.new
    photo.shoot = shoot
    shoot.public = "/tmp/public/testshoot"
    assert photo.fullsize == "/tmp/public/testshoot/pic.jpg"
    assert photo.thumb == "/tmp/public/testshoot/thumbs/pic.jpg"
  end
end
