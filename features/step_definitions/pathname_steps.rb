Given /^there is a shoot "(.*?)"$/ do |shootname|
  FactoryGirl.create(:shoot, name: shootname)
end

Given /^a photo "(.*?)" in "(.*?)"$/ do |photoname, shootname|
  FactoryGirl.create(:photo, name: photoname)
end
