# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Suppression des media existants
Medium.destroy_all

def open_photo(name)
  File.open(Rails.root.join("db", "images", name))
end

# Création de media en attente de l'exportation du csv
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

m6 = Medium.create!(Media_ID: 6,
Title: "Chuck",
Type: "SERIE",
Style: "Comédie, Espionnage, Action",
Season: 5,
Director: "Josh Schwartz",
description: "Employé dans une boutique de matériel informatique, Chuck Bartowski est propulsé du jour au lendemain dans le monde de l'espionnage, sa vie ennuyeuse laissant la place aux émotions fortes. Son cerveau renfermant, bien malgré lui, une base de données contenant des secrets gouvernementaux, la NSA et la CIA, soucieuses de protéger ces informations, envoient les agents John Casey et Sarah Walker pour veiller sur sa sécurité. Les informations qu'il détient nécessitent sa participation à de périlleuses missions, le confrontant à de multiples dangers. Tout ça sous le nez de son meilleur ami, Morgan, de sa soeur, Ellie, et de ses collègues de travail, qui ne se doutent de rien... ",
photo: open_photo("chuck.jpg"))

m7 = Medium.create!(Media_ID: 7,
Title: "Game of Thrones",
Type: "SERIE",
Style: "Drame, Fantastique",
Season: 8,
Director: "David Benioff",
description: "Il y a très longtemps, à une époque oubliée, une force a détruit l'équilibre des saisons. Dans un pays où l'été peut durer plusieurs années et l'hiver toute une vie, des forces sinistres et surnaturelles se pressent aux portes du Royaume des Sept Couronnes. La confrérie de la Garde de Nuit, protégeant le Royaume de toute créature pouvant provenir d'au-delà du Mur protecteur, n'a plus les ressources nécessaires pour assurer la sécurité de tous. Après un été de dix années, un hiver rigoureux s'abat sur le Royaume avec la promesse d'un avenir des plus sombres. Pendant ce temps, complots et rivalités se jouent sur le continent pour s'emparer du Trône de Fer, le symbole du pouvoir absolu.",
photo: open_photo("GOT.jpg"))

m8 = Medium.create!(Media_ID: 8,
Title: "Grey's Anatomy",
Type: "SERIE",
Style: "Drame, Médical",
Season: 15,
Director: "Shonda Rhimes",
description: "Meredith Grey, fille d'un chirurgien très réputé, commence son internat de première année en médecine chirurgicale dans un hôpital de Seattle. La jeune femme s'efforce de maintenir de bonnes relations avec ses camarades internes, mais dans ce métier difficile la compétition fait rage...",
photo: open_photo("greyanatomy.jpg"))

m9 = Medium.create!(Media_ID: 9,
Title: "Source Code",
Type: "FILM",
Style: " Science fiction, Action, Thriller",
Season: 0,
Director: "Duncan Jones",
description: "Colter Stevens se réveille en sursaut dans un train à destination de Chicago. Amnésique, il n’a aucun souvenir d’être monté dedans. Pire encore, les passagers du train se comportent avec lui avec familiarité alors qu’il ne les a jamais vus. Désorienté, il cherche à comprendre ce qui se passe mais une bombe explose tuant tout le monde à bord.
Colter se réveille alors dans un caisson étrange et découvre qu’il participe à un procédé expérimental permettant de se projeter dans le corps d’une personne et de revivre les 8 dernières minutes de sa vie. Sa mission : revivre sans cesse les quelques minutes précédant l’explosion afin d’identifier et d’arrêter les auteurs de l’attentat. A chaque échec, les chances de pouvoir revenir dans le passé s’amenuisent.
Alors qu’il essaie d’empêcher l’explosion, ses supérieurs lui apprennent qu’un deuxième attentat est en préparation en plein cœur de Chicago et qu’il ne s’agit plus de protéger les quelques passagers du train mais la ville toute entière. La course contre la montre commence… ",
photo: open_photo("sourcecode.jpg"))

m10 = Medium.create!(Media_ID: 10,
Title: "The 100",
Type: "SERIE",
Style: "Science fiction",
Season: 4,
Director: "Jason Rothenberg",
description: "Cela fait 97 ans que les derniers humains se sont installés dans une base spatiale. 100 jeunes délinquants sont envoyés en exploration sur la Terre. ",
photo: open_photo("the100.jpeg"))

    s10_1 = Season.create!(medium_id: m10.Media_ID,
        Title_Media: m10.Title,
        Season_Number: 1,
        Date: DateTime.new(2014,3,19),
        Episode: 13)

        e10_1 = Episode.create!(season_id: s10_1.Season_Number,
            Episode_ID: 1,
            Season_Number:s10_1.Season_Number,
            Title_Episode: "Titre 1",
            Episode_Number: 1,
            Date: DateTime.new(2014,3,19),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.Season_Number,
            Episode_ID: 2,
            Season_Number:s10_1.Season_Number,
            Title_Episode: "Titre 2",
            Episode_Number: 2,
            Date: DateTime.new(2014,3,20),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.Season_Number,
            Episode_ID: 3,
            Season_Number:s10_1.Season_Number,
            Title_Episode: "Titre 3",
            Episode_Number: 3,
            Date: DateTime.new(2014,3,21),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.Season_Number,
            Episode_ID: 4,
            Season_Number:s10_1.Season_Number,
            Title_Episode: "Titre 4",
            Episode_Number: 4,
            Date: DateTime.new(2014,3,22),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.Season_Number,
            Episode_ID: 5,
            Season_Number:s10_1.Season_Number,
            Title_Episode: "Titre 5",
            Episode_Number: 5,
            Date: DateTime.new(2014,3,23),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.Season_Number,
            Episode_ID: 6,
            Season_Number:s10_1.Season_Number,
            Title_Episode: "Titre 6",
            Episode_Number: 6,
            Date: DateTime.new(2014,3,24),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.Season_Number,
            Episode_ID: 7,
            Season_Number:s10_1.Season_Number,
            Title_Episode: "Titre 7",
            Episode_Number: 7,
            Date: DateTime.new(2014,3,25),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.Season_Number,
            Episode_ID: 8,
            Season_Number:s10_1.Season_Number,
            Title_Episode: "Titre 8",
            Episode_Number: 8,
            Date: DateTime.new(2014,3,26),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.Season_Number,
            Episode_ID: 9,
            Season_Number:s10_1.Season_Number,
            Title_Episode: "Titre 9",
            Episode_Number: 9,
            Date: DateTime.new(2014,3,27),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.Season_Number,
            Episode_ID: 10,
            Season_Number:s10_1.Season_Number,
            Title_Episode: "Titre 10",
            Episode_Number: 10,
            Date: DateTime.new(2014,3,28),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.Season_Number,
            Episode_ID: 11,
            Season_Number:s10_1.Season_Number,
            Title_Episode: "Titre 11",
            Episode_Number: 11,
            Date: DateTime.new(2014,3,29),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.Season_Number,
            Episode_ID: 12,
            Season_Number:s10_1.Season_Number,
            Title_Episode: "Titre 12",
            Episode_Number: 12,
            Date: DateTime.new(2014,3,30),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.Season_Number,
            Episode_ID: 13,
            Season_Number:s10_1.Season_Number,
            Title_Episode: "Titre 13",
            Episode_Number: 13,
            Date: DateTime.new(2014,3,31),
            Description: "knlibapizeubrpzaubpzaiubrpz")





    s10_2 = Season.create!(medium_id: m10.Media_ID,
        Title_Media: m10.Title,
        Season_Number: 2,
        Date: DateTime.new(2014,10,2),
        Episode: 13)

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 1,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 1",
            Episode_Number: 1,
            Date: DateTime.new(2014,10,2),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 2,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 2",
            Episode_Number: 2,
            Date: DateTime.new(2014,10,3),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 3,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 3",
            Episode_Number: 3,
            Date: DateTime.new(2014,10,4),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 4,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 4",
            Episode_Number: 4,
            Date: DateTime.new(2014,10,5),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 5,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 5",
            Episode_Number: 5,
            Date: DateTime.new(2014,10,6),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 6,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 6",
            Episode_Number: 6,
            Date: DateTime.new(2014,10,7),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 7,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 7",
            Episode_Number: 7,
            Date: DateTime.new(2014,10,8),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 8,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 8",
            Episode_Number: 8,
            Date: DateTime.new(2014,10,9),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 9,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 9",
            Episode_Number: 9,
            Date: DateTime.new(2014,10,10),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 10,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 10",
            Episode_Number: 10,
            Date: DateTime.new(2014,10,11),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 11,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 11",
            Episode_Number: 11,
            Date: DateTime.new(2014,10,12),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 12,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 12",
            Episode_Number: 12,
            Date: DateTime.new(2014,10,13),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 13,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 13",
            Episode_Number: 13,
            Date: DateTime.new(2014,10,14),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 14,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 14",
            Episode_Number: 14,
            Date: DateTime.new(2014,10,15),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 15,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 15",
            Episode_Number: 15,
            Date: DateTime.new(2014,10,16),
            Description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.Season_Number,
            Episode_ID: 16,
            Season_Number:s10_2.Season_Number,
            Title_Episode: "Titre 16",
            Episode_Number: 16,
            Date: DateTime.new(2014,10,17),
            Description: "knlibapizeubrpzaubpzaiubrpz")


m11 = Medium.create!(Media_ID: 11,
Title: "Sense 8",
Type: "SERIE",
Style: "Science fiction",
Season: 2,
Director: "J. Michael Straczynski",
description: "Huit individus éparpillés aux quatre coins du monde sont connectés par une soudaine et violente vision. Désormais liés, ils se retrouvent capables du jour au lendemain de se voir, de se sentir, de s'entendre et de se parler comme s'ils étaient au même endroit, et ainsi accéder aux plus sombres secrets des uns et des autres. Les huit doivent dès lors s'adapter à ce nouveau don, mais aussi comprendre le pourquoi du comment. Fuyant une organisation qui veut les capturer, les tuer ou faire d'eux des cobayes, ils cherchent quelles conséquences ce bouleversement pourrait avoir sur l'humanité. ",
photo: open_photo("sense8.jpg"))


m12 = Medium.create!(Media_ID: 12,
Title: "Iron fist",
Type: "SERIE",
Style: "Science fiction",
Season: 1,
Director: "Scott Buck",
description: "Daniel Rand revient à New York venger la mort de ses parents après avoir été formé aux arts martiaux dans la cité magique de K'un L'un, dans l'Himalaya.. ",
photo: open_photo("ironfist.jpg"))



s6_1 = Season.create!(medium_id: m6.Media_ID,
    Title_Media: m6.Title,
    Season_Number: 1,
    Date: DateTime.new(2005,2,3),
    Episode: 5)

s6_2 = Season.create!(medium_id: m6.Media_ID,
    Title_Media: m6.Title,
    Season_Number: 2,
    Date: DateTime.new(2007,4,7),
    Episode: 4)

s6_3 = Season.create!(medium_id: m6.Media_ID,
    Title_Media: m6.Title,
    Season_Number: 3,
    Date: DateTime.new(2009,9,12),
    Episode: 3)

    e6_1 = Episode.create!(season_id: s6_1.Season_Number,
        Episode_ID: 1,
        Season_Number:s6_1.Season_Number,
        Title_Episode: "Titre 1",
        Episode_Number: 1,
        Date: DateTime.new(2005,2,3),
        Description: "knlibapizeubrpzaubpzaiubrpz")

    e6_2 = Episode.create!(season_id: s6_1.Season_Number,
        Episode_ID: 2,
        Season_Number:s6_1.Season_Number,
        Title_Episode: "Titre 2",
        Episode_Number: 2,
        Date: DateTime.new(2005,2,4),
        Description: "knlibapizeubrpzaubpzaiubrpz")

    e6_3 = Episode.create!(season_id: s6_1.Season_Number,
        Episode_ID: 3,
        Season_Number:s6_1.Season_Number,
        Title_Episode: "Titre 3",
        Episode_Number: 3,
        Date: DateTime.new(2005,2,5),
        Description: "knlibapizeubrpzaubpzaiubrpz")

    e6_4 = Episode.create!(season_id: s6_1.Season_Number,
        Episode_ID: 4,
        Season_Number:s6_1.Season_Number,
        Title_Episode: "Titre 4",
        Episode_Number: 4,
        Date: DateTime.new(2005,2,6),
        Description: "knlibapizeubrpzaubpzaiubrpz")

    e6_5 = Episode.create!(season_id: s6_1.Season_Number,
        Episode_ID: 5,
        Season_Number:s6_1.Season_Number,
        Title_Episode: "Titre 5",
        Episode_Number: 5,
        Date: DateTime.new(2005,2,7),
        Description: "knlibapizeubrpzaubpzaiubrpz")
################################################################
    e6_6 = Episode.create!(season_id: s6_2.Season_Number,
        Episode_ID: 6,
        Season_Number:s6_2.Season_Number,
        Title_Episode: "Titre 1",
        Episode_Number: 1,
        Date: DateTime.new(2007,4,7),
        Description: "PAPPAPAPAPAPAPPAAMMAZEKAZLEAEKALZEA")

    e6_7 = Episode.create!(season_id: s6_2.Season_Number,
        Episode_ID: 7,
        Season_Number:s6_2.Season_Number,
        Title_Episode: "Titre 2",
        Episode_Number: 2,
        Date: DateTime.new(2007,4,8),
        Description: "PAPPAPAPAPAPAPPAAMMAZEKAZLEAEKALZEA")

    e6_8 = Episode.create!(season_id: s6_2.Season_Number,
        Episode_ID: 8,
        Season_Number:s6_2.Season_Number,
        Title_Episode: "Titre 3",
        Episode_Number: 3,
        Date: DateTime.new(2007,4,9),
        Description: "PAPPAPAPAPAPAPPAAMMAZEKAZLEAEKALZEA")

    e6_9 = Episode.create!(season_id: s6_2.Season_Number,
        Episode_ID: 9,
        Season_Number:s6_2.Season_Number,
        Title_Episode: "Titre 4",
        Episode_Number: 4,
        Date: DateTime.new(2007,4,10),
        Description: "PAPPAPAPAPAPAPPAAMMAZEKAZLEAEKALZEA")

    e6_1 = Episode.create!(season_id: s6_3.Season_Number,
        Episode_ID: 10,
        Season_Number:s6_3.Season_Number,
        Title_Episode: "Titre 1",
        Episode_Number: 1,
        Date: DateTime.new(2009,9,12),
        Description: "MQPMQSDPQSMDQPSDMQSDPQMSDQPSMD")

    e6_2 = Episode.create!(season_id: s6_3.Season_Number,
        Episode_ID: 11,
        Season_Number:s6_3.Season_Number,
        Title_Episode: "Titre 2",
        Episode_Number: 2,
        Date: DateTime.new(2009,9,13),
        Description: "MQPMQSDPQSMDQPSDMQSDPQMSDQPSMD")

    e6_3 = Episode.create!(season_id: s6_3.Season_Number,
        Episode_ID: 12,
        Season_Number:s6_3.Season_Number,
        Title_Episode: "Titre 3",
        Episode_Number: 3,
        Date: DateTime.new(2009,9,14),
        Description: "MQPMQSDPQSMDQPSDMQSDPQMSDQPSMD")
