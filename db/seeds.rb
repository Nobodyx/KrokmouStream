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
description: "Eternel ado de presque trente ans, délaissé par son père affairiste et une mère absente, Brice s'est réfugié dans une posture, un style avec lesquels il exprime son être essentiel, son véritable vécu intrinsèque. Il est devenu un surfeur, winner, ascendant snowboarder.
Comme Bodhi, le personnage de Patrick Swayze dans Point break, Brice attend la vague, SA vague... à Nice !
Personne pourtant ne se risque à se moquer de Brice : redoutable bretteur du langage, Brice s'est fait une spécialité de casser tout et tout le monde par le truchement de ses réparties verbales. Car Brice de Nice le surfeur est également un grand casseur.
Il fallait bien qu'un jour Brice soit rattrapé par la réalité... ",
photo: open_photo("BriceDeNice.jpg"))

m2 = Medium.create!(Media_ID: 2,
Title: "L'Arme fatale",
Type: "SERIE",
Style: "Comédie, Drame",
Season: 1,
Director: "Matthew Miller",
description: "Veuf depuis la mort tragique de son épouse enceinte, Martin Riggs, flic texan et ancien de la Marine, prend un nouveau départ à Los Angeles. Il devient le co-équipier du détective Roger Murtaugh, lequel a récemment subi une crise cardiaque 'bénigne' et doit à tout prix éviter les situations de stress. Un duo de choc qui risque de faire des étincelles. Entre l'un prudent et l'autre trop imprévisible, l'association provoque quelques étincelles...",
photo: open_photo("armefatale.jpg"))

m3 = Medium.create!(Media_ID: 3,
Title: "13 Reasons Why",
Type: "SERIE",
Style: "DRAME",
Season: 2,
Director: "Carl Franklin",
description: "Inspirée des best-sellers de Jay Asher, 13 Reasons Why suit Clay Jensen, un adolescent qui découvre sous son porche au retour du lycée une mystérieuse boîte portant son nom. À l'intérieur, des cassettes enregistrées par Hannah Baker, une camarade de classe qui s'est tragiquement suicidée deux semaines auparavant. Les enregistrements révèlent que la jeune fille, dont il était amoureux, a décidé de mettre fin à ses jours pour treize raisons. Clay est-il l'une de ces raisons ?",
photo: open_photo("13reasonwhy.jpg"))

m4 = Medium.create!(Media_ID: 4,
Title: "Prison Break",
Type: "SERIE",
Style: "Thriller",
Season: 5,
Director: "Nelson McCormick",
description: "Michael Scofield s'engage dans une véritable lutte contre la montre : son frère Lincoln est dans le couloir de la mort, en attente de son exécution. Persuadé de son innocence mais à court de solutions, Michael décide de se faire incarcérer à son tour dans le pénitencier d'état de Fox River pour organiser leur évasion... ",
photo: open_photo("prisonbreak.jpg"))

m5 = Medium.create!(Media_ID: 5,
Title: "One Piece",
Type: "ANIME",
Style: "Action, Aventure",
Season: 5,
Director: "Eiichiro Oda",
description: "Dans sa quête du One Piece, l’équipage au Chapeau de Paille arrive sur Grantesoro, capitale mondiale du divertissement, où les hommes fortunés viennent jouer au casino et assister aux spectacles les plus grandioses. Grantesoro est un sanctuaire imprenable contrôlé par l’Empereur de l’Or, Gild Tesoro. Même la Marine ne peut y intervenir. Mais Luffy et ses compagnons vont vite découvrir l’effrayante face cachée de cette ville et devront risquer leurs vies pour tenter de s’en échapper. ",
photo: open_photo("onepiece.jpg"))