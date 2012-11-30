require 'factory_girl'

FactoryGirl.define do
  factory :shoot do |s|
    s.name 'testshoot'
  end
end

FactoryGirl.define do
  factory :photo do |p|
    p.name 'testphoto'
    p.shoot FactoryGirl.create(:shoot)
  end
end
