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
m1 = Medium.create!(title: "Brice de nice",
style: "FILM",
genre: "Comédie",
nb_season: 0,
director: "James Huth",
description: "Eternel ado de presque trente ans, délaissé par son père affairiste et une mère absente, Brice s'est réfugié dans une posture, un genre avec lesquels il exprime son être essentiel, son véritable vécu intrinsèque. Il est devenu un surfeur, winner, ascendant snowboarder.
Comme Bodhi, le personnage de Patrick Swayze dans Point break, Brice attend la vague, SA vague... à Nice !
Personne pourtant ne se risque à se moquer de Brice : redoutable bretteur du langage, Brice s'est fait une spécialité de casser tout et tout le monde par le truchement de ses réparties verbales. Car Brice de Nice le surfeur est également un grand casseur.
Il fallait bien qu'un jour Brice soit rattrapé par la réalité... ",
photo: open_photo("BriceDeNice.jpg"))

m2 = Medium.create!(title: "L'Arme fatale",
style: "SERIE",
genre: "Comédie, Drame",
nb_season: 1,
director: "Matthew Miller",
description: "Veuf depuis la mort tragique de son épouse enceinte, Martin Riggs, flic texan et ancien de la Marine, prend un nouveau départ à Los Angeles. Il devient le co-équipier du détective Roger Murtaugh, lequel a récemment subi une crise cardiaque 'bénigne' et doit à tout prix éviter les situations de stress. Un duo de choc qui risque de faire des étincelles. Entre l'un prudent et l'autre trop imprévisible, l'association provoque quelques étincelles...",
photo: open_photo("armefatale.jpg"))

m3 = Medium.create!(title: "13 Reasons Why",
style: "SERIE",
genre: "DRAME",
nb_season: 2,
director: "Carl Franklin",
description: "Inspirée des best-sellers de Jay Asher, 13 Reasons Why suit Clay Jensen, un adolescent qui découvre sous son porche au retour du lycée une mystérieuse boîte portant son nom. À l'intérieur, des cassettes enregistrées par Hannah Baker, une camarade de classe qui s'est tragiquement suicidée deux semaines auparavant. Les enregistrements révèlent que la jeune fille, dont il était amoureux, a décidé de mettre fin à ses jours pour treize raisons. Clay est-il l'une de ces raisons ?",
photo: open_photo("13reasonwhy.jpg"))

m4 = Medium.create!(title: "Prison Break",
style: "SERIE",
genre: "Thriller",
nb_season: 5,
director: "Nelson McCormick",
description: "Michael Scofield s'engage dans une véritable lutte contre la montre : son frère Lincoln est dans le couloir de la mort, en attente de son exécution. Persuadé de son innocence mais à court de solutions, Michael décide de se faire incarcérer à son tour dans le pénitencier d'état de Fox River pour organiser leur évasion... ",
photo: open_photo("prisonbreak.jpg"))

m5 = Medium.create!(title: "One Piece",
style: "ANIME",
genre: "Action, Aventure",
nb_season: 5,
director: "Eiichiro Oda",
description: "Dans sa quête du One Piece, l’équipage au Chapeau de Paille arrive sur Grantesoro, capitale mondiale du divertissement, où les hommes fortunés viennent jouer au casino et assister aux spectacles les plus grandioses. Grantesoro est un sanctuaire imprenable contrôlé par l’Empereur de l’Or, Gild Tesoro. Même la Marine ne peut y intervenir. Mais Luffy et ses compagnons vont vite découvrir l’effrayante face cachée de cette ville et devront risquer leurs vies pour tenter de s’en échapper. ",
photo: open_photo("onepiece.jpg"))

m6 = Medium.create!(title: "Chuck",
style: "SERIE",
genre: "Comédie, Espionnage, Action",
nb_season: 5,
director: "Josh Schwartz",
description: "Employé dans une boutique de matériel informatique, Chuck Bartowski est propulsé du jour au lendemain dans le monde de l'espionnage, sa vie ennuyeuse laissant la place aux émotions fortes. Son cerveau renfermant, bien malgré lui, une base de données contenant des secrets gouvernementaux, la NSA et la CIA, soucieuses de protéger ces informations, envoient les agents John Casey et Sarah Walker pour veiller sur sa sécurité. Les informations qu'il détient nécessitent sa participation à de périlleuses missions, le confrontant à de multiples dangers. Tout ça sous le nez de son meilleur ami, Morgan, de sa soeur, Ellie, et de ses collègues de travail, qui ne se doutent de rien... ",
photo: open_photo("chuck.jpg"))

m7 = Medium.create!(title: "Game of Thrones",
style: "SERIE",
genre: "Drame, Fantastique",
nb_season: 8,
director: "David Benioff",
description: "Il y a très longtemps, à une époque oubliée, une force a détruit l'équilibre des saisons. Dans un pays où l'été peut durer plusieurs années et l'hiver toute une vie, des forces sinistres et surnaturelles se pressent aux portes du Royaume des Sept Couronnes. La confrérie de la Garde de Nuit, protégeant le Royaume de toute créature pouvant provenir d'au-delà du Mur protecteur, n'a plus les ressources nécessaires pour assurer la sécurité de tous. Après un été de dix années, un hiver rigoureux s'abat sur le Royaume avec la promesse d'un avenir des plus sombres. Pendant ce temps, complots et rivalités se jouent sur le continent pour s'emparer du Trône de Fer, le symbole du pouvoir absolu.",
photo: open_photo("GOT.jpg"))

m8 = Medium.create!(title: "Grey's Anatomy",
style: "SERIE",
genre: "Drame, Médical",
nb_season: 15,
director: "Shonda Rhimes",
description: "Meredith Grey, fille d'un chirurgien très réputé, commence son internat de première année en médecine chirurgicale dans un hôpital de Seattle. La jeune femme s'efforce de maintenir de bonnes relations avec ses camarades internes, mais dans ce métier difficile la compétition fait rage...",
photo: open_photo("greyanatomy.jpg"))

m9 = Medium.create!(title: "Source Code",
style: "FILM",
genre: " Science fiction, Action, Thriller",
nb_season: 0,
director: "Duncan Jones",
description: "Colter Stevens se réveille en sursaut dans un train à destination de Chicago. Amnésique, il n’a aucun souvenir d’être monté dedans. Pire encore, les passagers du train se comportent avec lui avec familiarité alors qu’il ne les a jamais vus. Désorienté, il cherche à comprendre ce qui se passe mais une bombe explose tuant tout le monde à bord.
Colter se réveille alors dans un caisson étrange et découvre qu’il participe à un procédé expérimental permettant de se projeter dans le corps d’une personne et de revivre les 8 dernières minutes de sa vie. Sa mission : revivre sans cesse les quelques minutes précédant l’explosion afin d’identifier et d’arrêter les auteurs de l’attentat. A chaque échec, les chances de pouvoir revenir dans le passé s’amenuisent.
Alors qu’il essaie d’empêcher l’explosion, ses supérieurs lui apprennent qu’un deuxième attentat est en préparation en plein cœur de Chicago et qu’il ne s’agit plus de protéger les quelques passagers du train mais la ville toute entière. La course contre la montre commence… ",
photo: open_photo("sourcecode.jpg"))

m10 = Medium.create!(title: "The 100",
style: "SERIE",
genre: "Science fiction",
nb_season: 4,
director: "Jason Rothenberg",
description: "Cela fait 97 ans que les derniers humains se sont installés dans une base spatiale. 100 jeunes délinquants sont envoyés en exploration sur la Terre. ",
photo: open_photo("the100.jpeg"))

    s10_1 = Season.create!(medium_id: m10.id,
        title_media: m10.title,
        season_number: 1,
        date: DateTime.new(2014,3,19),
        nb_episode: 13)

        e10_1 = Episode.create!(season_id: s10_1.season_number,
            medium_id: m10.id,
            season_number:s10_1.season_number,
            title_episode: "Titre 1",
            episode_number: 1,
            date: DateTime.new(2014,3,19),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.season_number,
            medium_id: m10.id,
            season_number:s10_1.season_number,
            title_episode: "Titre 2",
            episode_number: 2,
            date: DateTime.new(2014,3,20),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.season_number,
            medium_id: m10.id,
            season_number:s10_1.season_number,
            title_episode: "Titre 3",
            episode_number: 3,
            date: DateTime.new(2014,3,21),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.season_number,
            medium_id: m10.id,
            season_number:s10_1.season_number,
            title_episode: "Titre 4",
            episode_number: 4,
            date: DateTime.new(2014,3,22),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.season_number,
            medium_id: m10.id,
            season_number:s10_1.season_number,
            title_episode: "Titre 5",
            episode_number: 5,
            date: DateTime.new(2014,3,23),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.season_number,
            medium_id: m10.id,
            season_number:s10_1.season_number,
            title_episode: "Titre 6",
            episode_number: 6,
            date: DateTime.new(2014,3,24),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.season_number,
            medium_id: m10.id,
            season_number:s10_1.season_number,
            title_episode: "Titre 7",
            episode_number: 7,
            date: DateTime.new(2014,3,25),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.season_number,
            medium_id: m10.id,
            season_number:s10_1.season_number,
            title_episode: "Titre 8",
            episode_number: 8,
            date: DateTime.new(2014,3,26),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.season_number,
            medium_id: m10.id,
            season_number:s10_1.season_number,
            title_episode: "Titre 9",
            episode_number: 9,
            date: DateTime.new(2014,3,27),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.season_number,
            medium_id: m10.id,
            season_number:s10_1.season_number,
            title_episode: "Titre 10",
            episode_number: 10,
            date: DateTime.new(2014,3,28),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.season_number,
            medium_id: m10.id,
            season_number:s10_1.season_number,
            title_episode: "Titre 11",
            episode_number: 11,
            date: DateTime.new(2014,3,29),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.season_number,
            medium_id: m10.id,
            season_number:s10_1.season_number,
            title_episode: "Titre 12",
            episode_number: 12,
            date: DateTime.new(2014,3,30),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_1.season_number,
            medium_id: m10.id,
            season_number:s10_1.season_number,
            title_episode: "Titre 13",
            episode_number: 13,
            date: DateTime.new(2014,3,31),
            description: "knlibapizeubrpzaubpzaiubrpz")

    s10_2 = Season.create!(medium_id: m10.id,
        title_media: m10.title,
        season_number: 2,
        date: DateTime.new(2014,10,2),
        nb_episode: 13)

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 1",
            episode_number: 1,
            date: DateTime.new(2014,10,2),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 2",
            episode_number: 2,
            date: DateTime.new(2014,10,3),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 3",
            episode_number: 3,
            date: DateTime.new(2014,10,4),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 4",
            episode_number: 4,
            date: DateTime.new(2014,10,5),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 5",
            episode_number: 5,
            date: DateTime.new(2014,10,6),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 6",
            episode_number: 6,
            date: DateTime.new(2014,10,7),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 7",
            episode_number: 7,
            date: DateTime.new(2014,10,8),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 8",
            episode_number: 8,
            date: DateTime.new(2014,10,9),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 9",
            episode_number: 9,
            date: DateTime.new(2014,10,10),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 10",
            episode_number: 10,
            date: DateTime.new(2014,10,11),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 11",
            episode_number: 11,
            date: DateTime.new(2014,10,12),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 12",
            episode_number: 12,
            date: DateTime.new(2014,10,13),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 13",
            episode_number: 13,
            date: DateTime.new(2014,10,14),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 14",
            episode_number: 14,
            date: DateTime.new(2014,10,15),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 15",
            episode_number: 15,
            date: DateTime.new(2014,10,16),
            description: "knlibapizeubrpzaubpzaiubrpz")

        e10_1 = Episode.create!(season_id: s10_2.season_number,
            medium_id: m10.id,
            season_number:s10_2.season_number,
            title_episode: "Titre 16",
            episode_number: 16,
            date: DateTime.new(2014,10,17),
            description: "knlibapizeubrpzaubpzaiubrpz")


m11 = Medium.create!(title: "Sense 8",
style: "SERIE",
genre: "Science fiction",
nb_season: 2,
director: "J. Michael Straczynski",
description: "Huit individus éparpillés aux quatre coins du monde sont connectés par une soudaine et violente vision. Désormais liés, ils se retrouvent capables du jour au lendemain de se voir, de se sentir, de s'entendre et de se parler comme s'ils étaient au même endroit, et ainsi accéder aux plus sombres secrets des uns et des autres. Les huit doivent dès lors s'adapter à ce nouveau don, mais aussi comprendre le pourquoi du comment. Fuyant une organisation qui veut les capturer, les tuer ou faire d'eux des cobayes, ils cherchent quelles conséquences ce bouleversement pourrait avoir sur l'humanité. ",
photo: open_photo("sense8.jpg"))


m12 = Medium.create!(title: "Iron fist",
style: "SERIE",
genre: "Science fiction",
nb_season: 1,
director: "Scott Buck",
description: "Daniel Rand revient à New York venger la mort de ses parents après avoir été formé aux arts martiaux dans la cité magique de K'un L'un, dans l'Himalaya.. ",
photo: open_photo("ironfist.jpg"))



s6_1 = Season.create!(medium_id: m6.id,
    title_media: m6.title,
    season_number: 1,
    date: DateTime.new(2005,2,3),
    nb_episode: 5)

s6_2 = Season.create!(medium_id: m6.id,
    title_media: m6.title,
    season_number: 2,
    date: DateTime.new(2007,4,7),
    nb_episode: 4)

s6_3 = Season.create!(medium_id: m6.id,
    title_media: m6.title,
    season_number: 3,
    date: DateTime.new(2009,9,12),
    nb_episode: 3)

    e6_1 = Episode.create!(season_id: s6_1.season_number,
        medium_id: m6.id,
        season_number:s6_1.season_number,
        title_episode: "Titre 1",
        episode_number: 1,
        date: DateTime.new(2005,2,3),
        description: "knlibapizeubrpzaubpzaiubrpz")

    e6_2 = Episode.create!(season_id: s6_1.season_number,
        medium_id: m6.id,
        season_number:s6_1.season_number,
        title_episode: "Titre 2",
        episode_number: 2,
        date: DateTime.new(2005,2,4),
        description: "knlibapizeubrpzaubpzaiubrpz")

    e6_3 = Episode.create!(season_id: s6_1.season_number,
        medium_id: m6.id,
        season_number:s6_1.season_number,
        title_episode: "Titre 3",
        episode_number: 3,
        date: DateTime.new(2005,2,5),
        description: "knlibapizeubrpzaubpzaiubrpz")

    e6_4 = Episode.create!(season_id: s6_1.season_number,
        medium_id: m6.id,
        season_number:s6_1.season_number,
        title_episode: "Titre 4",
        episode_number: 4,
        date: DateTime.new(2005,2,6),
        description: "knlibapizeubrpzaubpzaiubrpz")

    e6_5 = Episode.create!(season_id: s6_1.season_number,
        medium_id: m6.id,
        season_number:s6_1.season_number,
        title_episode: "Titre 5",
        episode_number: 5,
        date: DateTime.new(2005,2,7),
        description: "knlibapizeubrpzaubpzaiubrpz")
################################################################
    e6_6 = Episode.create!(season_id: s6_2.season_number,
        medium_id: m6.id,
        season_number:s6_2.season_number,
        title_episode: "Titre 1",
        episode_number: 1,
        date: DateTime.new(2007,4,7),
        description: "PAPPAPAPAPAPAPPAAMMAZEKAZLEAEKALZEA")

    e6_7 = Episode.create!(season_id: s6_2.season_number,
        medium_id: m6.id,
        season_number:s6_2.season_number,
        title_episode: "Titre 2",
        episode_number: 2,
        date: DateTime.new(2007,4,8),
        description: "PAPPAPAPAPAPAPPAAMMAZEKAZLEAEKALZEA")

    e6_8 = Episode.create!(season_id: s6_2.season_number,
        medium_id: m6.id,
        season_number:s6_2.season_number,
        title_episode: "Titre 3",
        episode_number: 3,
        date: DateTime.new(2007,4,9),
        description: "PAPPAPAPAPAPAPPAAMMAZEKAZLEAEKALZEA")

    e6_9 = Episode.create!(season_id: s6_2.season_number,
        medium_id: m6.id,
        season_number:s6_2.season_number,
        title_episode: "Titre 4",
        episode_number: 4,
        date: DateTime.new(2007,4,10),
        description: "PAPPAPAPAPAPAPPAAMMAZEKAZLEAEKALZEA")

    e6_1 = Episode.create!(season_id: s6_3.season_number,
        medium_id: m6.id,
        season_number:s6_3.season_number,
        title_episode: "Titre 1",
        episode_number: 1,
        date: DateTime.new(2009,9,12),
        description: "MQPMQSDPQSMDQPSDMQSDPQMSDQPSMD")

    e6_2 = Episode.create!(season_id: s6_3.season_number,
        medium_id: m6.id,
        season_number:s6_3.season_number,
        title_episode: "Titre 2",
        episode_number: 2,
        date: DateTime.new(2009,9,13),
        description: "MQPMQSDPQSMDQPSDMQSDPQMSDQPSMD")

    e6_3 = Episode.create!(season_id: s6_3.season_number,
        medium_id: m6.id,
        season_number:s6_3.season_number,
        title_episode: "Titre 3",
        episode_number: 3,
        date: DateTime.new(2009,9,14),
        description: "MQPMQSDPQSMDQPSDMQSDPQMSDQPSMD")
