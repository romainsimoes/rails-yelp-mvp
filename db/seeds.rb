# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Wo Te Pengiwo",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "0983723674",
    category:     "Chinese"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "0874678372",
    category:     "French"
  },
  {
    name:         "Calzone",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "0138928374",
    category:     "Italien"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }

# t.string   "name"
# t.string   "address"
# t.string   "phone_number"
# t.string   "category"
