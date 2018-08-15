# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '01 45 00 67 55',
    category: 'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '01 99 46 12 55',
    category: 'italian'
  },
  {
    name:         'Macdonalds',
    address:      'Menilmontant',
    phone_number:  '01 00 46 22 34',
    category: 'french'
  },
  {
    name:         'Captain Cheese',
    address:      'rue de Paris',
    phone_number:  '03 25 46 98 85',
    category: 'italian'
  },
  {
    name:         'Chez Maurice',
    address:      '87 rue du chemin vert',
    phone_number:  '05 03 33 71 55',
    category: 'french'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
