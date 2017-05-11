# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Medium.destroy_all

def open_photo(name)
  File.open(Rails.root.join("db", "images", name))
end

m1 = Medium.create!(Media_ID: 1,
Title: "Brice de nice",
Type: "FILM",
Style: "Comédie",
Season: 0,
Director: "James Huth",
photo: open_photo("BriceDeNice.jpg"))

m2 = Medium.create!(Media_ID: 2,
Title: "L'Arme fatale",
Type: "SERIE",
Style: "Comédie, Drame",
Season: 1,
Director: "Matthew Miller",
photo: open_photo("armefatale.jpg"))

m3 = Medium.create!(Media_ID: 3,
Title: "13 Reasons Why",
Type: "SERIE",
Style: "DRAME",
Season: 2,
Director: "Carl Franklin",
photo: open_photo("13reasonwhy.jpg"))

m4 = Medium.create!(Media_ID: 4,
Title: "Prison Break",
Type: "SERIE",
Style: "Thriller",
Season: 5,
Director: "Nelson McCormick",
photo: open_photo("prisonbreak.jpg"))

m5 = Medium.create!(Media_ID: 5,
Title: "One Piece",
Type: "ANIME",
Style: "Action, Aventure",
Season: 5,
Director: "Eiichiro Oda",
photo: open_photo("onepiece.jpg"))