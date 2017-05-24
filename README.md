# README

KrokmouStream est une application Rails permettant le suivi de séries télévisées, inspiré de BetaSeries

Le projet est mené par une équipe de développeur d'Ingésup B3 au sein d'Ynov Campus Aix

![alt text](http://i.imgur.com/9IvBPfi.png)


L'application permet les User Stories suivantes :

  - En tant qu'internaute (anonyme)
  Je peux visualiser en page d'accueil 2 à 4 séries
    mises en avant sur le site (avec une image par exemple)
  Afin de découvrir de nouvelles séries.

Une fois arrivé sur la page, un internaute anonyme peut voir une liste de 2 à 4 séries et peut cliquer dessus 
pour avoir plus d'informations dessus :

![alt text](http://i.imgur.com/VgcJY0x.png)

Si jamais c'est un utilisateur authentifier alors il aura accès à bien plus de série :

![alt text](http://i.imgur.com/TXmpKZ0.jpg)

  - En tant qu'internaute (anonyme)
  Je peux consulter une liste globale de tous les épisodes d'une série donnée,
    organisée saison par saison (sous la forme saison>x<episode: 3x04)
  Afin de connaître leurs titres et dates de diffusion

Il est possible qu'un utilisateur anonyme ai accès au détails d'une série pour avoir des informations basique sur la série ainsi que le saisons et épisode de celle-ci. Pour cela il lui suffit simplement de cliquer sur une série ainsi que voir les épisodes puis les saisons.

![alt text](http://i.imgur.com/Zs1BFs9.png)

  - En tant que fan de séries,
  Je peux m'inscrire sur le site
  Afin de profiter des fonctionnalités du site.

Pour cette user story nous avons mis en place l'utilisation de la gem DEVISE, qui nous permet de gérer plus facilement nos Users avec formulaire d'inscription, de connexion ainsi que de modification de compte. La base "user" de DEVISE sera adapter à l'ensemble de notre base de données.

![alt text](http://i.imgur.com/Koh1ehv.png)

  - En tant que membre du site,
  Je peux ajouter à mon espace perso une série que je regarde
    (sélectionnée dans une liste / un auto-complete)
  Afin d'enregistrer quels épisodes j'ai déjà visionnés.

Sur la page d'accueil il est possible d'avoir un visuel en liste d'image des séries de KrokmouStream. Lorsque l'on accède aux informations d'une série pour avoir plus de détails sur celle-ci, si l'on est connecté, on pourra observé la présence d'un bouton "Ajouter à mes séries".
Ce qui créera automatiquement l'ajout d'une série pour l'utilisateur afin de gérer ses épisodes.

![alt text](http://i.imgur.com/Vkjh3DV.png)

  - En tant que membre du site,
  Je peux "marquer comme lu" un épisode d'une série
  Afin que le site mémorise pour moi cette information.

Les saisons et épisodes peuvent être marqués comme vu une fois que la série a été ajouté aux séries de l'utilisateur,
cette action est réalisable grâce à un bouton "Marquer comme vu" : 

![alt text](http://i.imgur.com/0GkkBC9.jpg)

  - En tant que membre du site
  Je peux consulter sur la page d'accueil du site les prochains épisodes
    à voir pour chaque série que j'ai enregistrée sur le site
  Afin de ne rater aucun épisode.
  
Sur la page d'accueil, un carousel défilant affiche les séries suivie par l'utilisateur connecté
ainsi que les saisons et épisodes vus :

![alt text](http://i.imgur.com/PrBk7AE.jpg)
  
User story bonus :

  - En tant qu'internaute anonyme,
  Via l'API, je peux lister toutes les séries disponibles sur le site,
  Afin de connaître leurs IDs et d'interagir avec elles.
  
Blabla

  - En tant que membre du site,
  Je peux récupérer un token
  Afin d'utiliser l'API pour agir sur mon compte.
  
Blabla

  - En tant que membre du site,
  Via l'API, je peux lister mes propres séries,
  Afin de connaître leurs IDs puis d'afficher des informations détaillées.

Blabla

  - En tant que membre du site,
  Via l'API, pour une série donnée, je peux afficher la liste des épisodes vus et restant à voir
  Afin de suivre où j'en suis dans la série.
  
Blabla

  - En tant que membre du site,
  Via l'API, je peux "marquer comme lu" un épisode d'une série
  Afin que le site mémorise pour moi cette information.
  
Blabla
