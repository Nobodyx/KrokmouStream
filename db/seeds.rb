# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Medium.destroy_all

m1 = Medium.create!(Media_ID: 1,
Title: "Brice de nice",
Type: "FILM",
Style: "Comédie",
Season: 0,
Director: "James Huth")