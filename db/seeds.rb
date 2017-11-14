# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# delete including this <---

Listing.create(title: "Knife", description: "cutting stuff", address: "Bredgatan", price: 50)
Listing.create(title: "Fork", description: "forking stuff", address: "Tokyo", price: 70)
Listing.create(title: "Spoon", description: "spooning stuff", address: "Yoyo", price: 20)
