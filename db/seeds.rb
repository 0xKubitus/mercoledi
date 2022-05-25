# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



i=1
User.destroy_all
Event.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('users')
10.times do
  User.create(email:"user#{i}@yopmail.com", description: "description n°#{i}", password:"123456", first_name: "Fname n°#{i}", last_name: "Lname n°#{i}")
  i+=1
end

ActiveRecord::Base.connection.reset_pk_sequence!('events')
15.times do
  Event.create(start_date: Time.new(2022, rand(6..12), rand(1..28)), duration: 300, title:"titre n°#{i}", description: "description n°#{i}", price: 100, location: "Lieu n°#{i}", admin: User.all.sample)
  i+=1
end