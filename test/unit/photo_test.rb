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
end
