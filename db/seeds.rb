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
    name: 'Le Pointu',
    address: "Riponne, Lausanne",
    phone_number: "021 263 19 28",
    category: "french"
  },
  {
    name: 'Five Guys',
    address: "Gare, Genève",
    phone_number: "022 678 29 86",
    category: "french"
  },
  {
    name: 'Luigia',
    address: "Terrassière, Genève",
    phone_number: "022 243 98 23",
    category: "italian"

  },
  {
    name: 'Sushi Shop',
    address: "Coulouvrenière, Genève",
    phone_number: "022 363 59 28",
    category: "japanese"
  },
  {
    name: 'Bao kitchen',
    address: "Plainpalais, Genève",
    phone_number: "022 213 49 78",
    category: "chinese"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
