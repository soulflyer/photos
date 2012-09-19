require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "must have at least a fullsize entry" do
    photo = Photo.new
    assert photo.invalid?
    assert photo.errors[:fullsize].any?
    assert photo.errors[:shoot_id].any?
    photo.fullsize = "/tmp/pic.jpg"
    photo.shoot_id = 1
    assert photo.valid?
  end
end
