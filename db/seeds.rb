# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'seed is coming'

laura = User.create(email: 'laura@gmail.com', password: 'lewagon')
mary = User.create(email: 'mary@me.com', password: 'marytooshort')
paul = User.create(email: 'paul@boulanger.be', password: 'popole')
brenda = User.create(email: 'brenda@la-star.com', password: 'password')
pierre = User.create(email: 'pierre@le-gentil.fr', password: 'ciseaux')

puts "user = #{User.count}"

equipments = [{user_id: 1, sport: 'surf', kid_age: 12, name: 'planche peu servie, visible à Paris 13e', price: 20},
  {user_id: 2, sport: 'surf', kid_age: 13, name: 'Jamais utilisé ! Location sur place', price: 20},
  {user_id: 2, sport: 'surf', kid_age: 14, name: 'planche enfant 8-12 ans. Idéal', price: 20},
  {user_id: 3, sport: 'surf', kid_age: 15, name: 'planche neuve. Disponible à Paris ou Biarritz', price: 20}]

equipments.each do |attributes|
  Equipment.create(attributes)
end

puts "equipment = #{Equipment.count}"

bookings = [{equipment_id: 1, user_id: 1, address: 'biarritz'},
  { equipment_id: 2, user_id: 2, address: 'paris'},
  { equipment_id: 3, user_id: 3, address: 'marseille'},
  { equipment_id: 4, user_id: 4, address: 'bordeaux'}]

bookings.each do |attributes|
  Booking.create!(attributes)
end

puts "booking = #{Booking.count}"



#Equipment.create(name: 'planche peu servie, visible à Paris 13e, 30€/jour', sport: 'surf', user_id: 1, kid_age: '12', price: 20)
puts 'end of seed'
