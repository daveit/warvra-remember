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

user = User.find_or_create_by!(email: "view@example.com") do |user|
  user.name = "View Only"
  user.password = "password"
  user.password_confirmation = "password"
  user.role = 1
  puts "user: ViewOnly - " << user.email
end

user = User.find_or_create_by!(email: "vip@gmail.com") do |user|
  user.name = "VIP User"
  user.password = "letmein123"
  user.password_confirmation = "letmein123"
  user.role = 1
  puts "user VIP: " << user.email
end

user = User.find_or_create_by!(email: "hamish53@bigpond.com") do |user|
  user.name = "Bob Hamilton"
  user.password = "LetBHIn+711"
  user.password_confirmation = "LetBHIn+711"
  user.role = 2
  puts "user Bob Hamilton: " << user.email
end

user = User.find_or_create_by!(email: "gg.vb@bigpond.com") do |user|
  user.name = "Val Brown"
  user.password = "LetVBIn+724"
  user.password_confirmation = "LetVBIn+724"
  user.role = 2
  puts "user Val Brown: " << user.email
end

user = User.find_or_create_by!(email: "talworth40@gmail.com") do |user|
  user.name = "Colin Edwards"
  user.password = "LetCEIn+319"
  user.password_confirmation = "LetCEIn+319"
  user.role = 1
  puts "user Colin Edwards: " << user.email
end

user = User.find_or_create_by!(email: "ianandrae@internode.on.net") do |user|
  user.name = "Ian Nordeck"
  user.password = "LetINIn+802"
  user.password_confirmation = "LetINIn+802"
  user.role = 1
  puts "user Ian Nordeck: " << user.email
end