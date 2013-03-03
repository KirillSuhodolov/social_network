# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :nickname => 'First User', :email => 'user@example.com', :age => 20, :interests => 'runing', :city => 'Tokio', :about => 'wow', :password => 'useruser', :password_confirmation => 'useruser'
puts 'New user created: ' << user.nickname
user2 = User.create! :nickname => 'Second User', :email => 'user2@example.com', :age => 20, :interests => 'swiming', :city => 'Chicago', :about => 'wonderfull', :password => 'useruser', :password_confirmation => 'useruser'
puts 'New user created: ' << user2.nickname
