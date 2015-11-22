# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#user = CreateAdminService.new.call
#puts 'CREATED ADMIN USER: ' << user.email

user = User.find_or_create_by!(email: "daveporter@me.com") do |user|
  user.name = "David Porter"
  user.password = "LetDaveIn+123"
  user.password_confirmation = "LetDaveIn+123"
  user.role = 2
  puts "user dave admin with gmail: " << user.email
end

user = User.find_or_create_by!(email: "dave.southperth@gmail.com") do |user|
  user.name = "Dave Porter"
  user.password = "LetDaveIn+123"
  user.password_confirmation = "LetDaveIn+123"
  user.role = 2
  puts "user dave admin with gmail: " << user.email
end

user = User.find_or_create_by!(email: "dcousins@iimetro.com.au") do |user|
  user.name = "Des Cousins"
  user.password = "LetDesIn+888"
  user.password_confirmation = "LetDesIn+888"
  user.role = 1
  puts "user Des: " << user.email
end

user = User.find_or_create_by!(email: "nicolay@westnet.com.au") do |user|
  user.name = "Denise Nicolay"
  user.password = "LetDNIn+913"
  user.password_confirmation = "LetDNIn+913"
  user.role = 1
  puts "user Denise: " << user.email
end