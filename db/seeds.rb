# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

laura = User.create(email: 'laura@gmail.com', password: 'lewagon')
mary = User.create(email: 'mary@me.com', password: 'marytooshort')
paul = User.create(email: 'paul@me.com', password: 'popole')
brenda = User.create(email: 'brenda@me.com', password: 'password')
pierre = User.create(email: 'pierre@me.com', password: 'ciseaux')

equipments = [{user: mary, sport: 'surf', kid_age: '12', name: 'planche peu servie, visible à Paris 13e, 30€/jour'},
  {user: paul, sport: 'surf', kid_age: '12', name: 'Jamais utilisé ! Location sur place, 35€/jour'},
  {user: brenda, sport: 'surf', kid_age: '12', name: 'planche enfant 8-12 ans. Idéal pour débutant, 20€/jour'},
  {user: pierre, sport: 'surf', kid_age: '12', name: 'planche neuve. Disponible à Paris ou Biarritz. 32€/jour'}]

equipments.each do |attributes|
  Equipment.create(attributes)
end

bookings = [{equipment_id: '1', user: mary, start_date: '01/04/2020', end_date: '29/04/2020', address: 'biarritz'},
  {equipment_id: '2', user: paul, start_date: '01/04/2020', end_date: '30/05/2020', address:' biarritz'},
  {equipment_id: '3', user: brenda, start_date: '01/04/2020', end_date: '30/06/2020', address: 'biarritz'},
  {equipment_id: '4', user: pierre, start_date: '01/04/2020', end_date: '30/06/2020', address: 'biarritz'}]

bookings.each do |attributes|
  Booking.create(attributes)
end
