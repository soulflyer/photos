#!/usr/bin/env ruby
require "~/Code/Photos/config/environment.rb"
puts "hello"
pic = Shoot.find(1)
puts pic.name
ARGV.each do |a|
  d=Dir.new(a)
  Dir.chdir(a)
  entries=Dir.glob("*.jpg")
  pathname=Dir.pwd
  Dir.chdir("masters")
  masterpath=Dir.pwd
  entries.each do |f|
    basename=File.basename(f, ".*")
    extension=File.extname(f)
    master=Dir.glob("#{basename}.*")
    pic=Photo.new
    pic.fullsize="#{pathname}/#{basename}.#{extension}"
    pic.original="#{pathname}/masters/#{master[0]}"
    pic.thumb="#{pathname}/thumbs/#{basename}.#{extension}"
    pic.shoot_id=1
    pic.save
  end
end
