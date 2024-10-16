- [Étape de Pré-Production](#étape-de-pré-production)
  - [Analyse des Besoins](#analyse-des-besoins)
  - [Planification et Stratégie](#planification-et-stratégie)
  - [Conception et Design](#conception-et-design)
- [Étape de Production](#étape-de-production)
  - [Développement](#développement)
  - [Tests et Qualité](#tests-et-qualité)
- [Étape de Pré-Lancement](#étape-de-pré-lancement)
  - [Migration et Préparation](#migration-et-préparation)
  - [Lancement](#lancement)

!! https://trello.com/b/54Xgtebj/luchvintage !!

# Étape de Pré-Production
## Analyse des Besoins
Identification des objectifs du site (vendre en ligne, catalogue, etc.)
-  Luch Vintage, sera une boutique en ligne dédiée à la mode de seconde main. Elle propose une sélection unique de vêtements et accessoires vintage, soigneusement choisis pour leur style rétro et leur qualité. Luch Vintage permet à ses clients de faire des économies, d’entretenir leurs vêtements et faire un geste pour la planète tout en enrichissant leur garde-robe avec des pièces authentiques et durables.

Définition des utilisateurs cibles et du parcours client
- Utilisateurs :
  La seconde main est en plein expansion elle peux toucher tout le monde, alors le publique est extrêmement large selon les motivations
    - Personnes ayant une prise de conscience sur l’industrie du textile et de la fast fashion
    - Personnes recherchant de produits abordables et un bon rapport qualité/prix
    - Recherche de style avec des pieces originales et atypique
- Parcours du client :
  - Créer une boucle entre la vie de la seconde main ( guide, astuces, story, post ) sur les réseau et la transverser vers le site pour mener à l’achat en créant un chemin fermée pour l’utilisateur
  - Reseau/Recherche/Communication
    └── Page d'acc
        └── Header avec Logo ( retour page d'acc ) Categories, Mon profil, Panier 
        └── Banniere avec ( promo / collection / guides et astuces)
        └── Mes coups de coeur
            └── Ajout de articles dans le panier
                └── Achat/Paiement
                    └── Livraison
                        └── Avis
        └── Trends
            └── Arrivé sur les reseaux
        └── Contact
            └── Formulaire question/retours/fourniseurs etc ...

Étude de marché et analyse des concurrents
- Marché :
- Concurents :
  - Concurrents directs (seconde main et vintage) :
    - Vinted/Vestiaire Collective/Etsy/Asos Marketplace etc ...
  - Concurrents indirects (seconde main généraliste et seconde main vente physique) :
    - LeBonCoin/Depop/eBay
    - Magasin de ventes de secondes main/fripes/evenements etc...
Spécification des fonctionnalités requises (gestion des produits, paiement en ligne, etc.)
- Fonctionalitées :
  - Gestion des utilisateurs :
  - Gestion des produits :
  - Gestion des commandes
  - Système de paiement
  - Livraison
  - Gestion des retours
  - Gestion des promotions
  - Gestion des avis
  - Système de notification
  - Administration

## Planification et Stratégie
Définition du périmètre du projet
- Avoir un site qui propose des categories d'article femmes et des guides autour des articles proposées

Élaboration du cahier des charges
- Cahier des charges : Cf cahier-des-charges.md

## Conception et Design
Création des wireframes et maquettes fonctionnelles
- Wireframes et maquettes : Cf dossier maquettes et wireframe

Développement de l'identité visuelle (charte graphique, logos, etc.)

UX/UI Design : optimisations pour l'expérience utilisateur
- UX/UI : Cf dossier UX/UI (figma)


# Étape de Production
## Développement
Configuration de l'environnement de développement
- Outils generaux : Trello, Figma/Canva
- Front : JavaScript, HTML, CSS, Bootsrap
- Back : Symfony

- Sprint 1 : Initialisation du projet
    - Créer un repository Git/GitHub pour le projet
    - Initialiser le projet Symfony
    - Configurer l'environnement de développement local (installation des dépendances, serveurs, etc.)
    - Définir les objectifs du projet et les fonctionnalités de base (backlog)
    - Mettre en place Trello avec la structure des sprints

- Sprint 2 : Gestion des utilisateurs et sécurité
    - Installer et configurer Symfony Security
    - Créer l'entité User avec les champs nécessaires (nom, prénom, email, etc.)
    - Configurer le système d’inscription et de connexion
    - Mettre en place la gestion des rôles (client, admin)
    - Tester les fonctionnalités d’authentification

- Sprint 3 : Gestion des produits
    - Créer les entités Produits et Catégories
    - Créer un CRUD pour la gestion des produits
    - Créer un CRUD pour la gestion des catégories
    - Ajouter la fonctionnalité d’association des images aux produits
    - Implémenter les relations entre produits et catégories

- Sprint 4 : Gestion du panier et des commandes
    - Créer les entités Panier et Commande
    - Implémenter la logique du panier d’achat
    - Implémenter la gestion des commandes
    - Ajouter la validation des commandes

- Sprint 5 : Gestion des paiements et promotions
    - Créer l’entité Paiement et configurer le paiement en ligne
    - Implémenter la gestion des promotions (ajouter, appliquer, calculer)
    - Créer les relations entre Paiement et Commande
    - Tester la fonctionnalité de paiement

- Sprint 6 : Livraison et gestion des retours
    - Créer les entités Livraison et Service de livraison
    - Mettre en place le suivi des livraisons
    - Ajouter la gestion des retours de produits (entité RetourProduit)
    - Tester le processus de retour et de remboursement

- Sprint 7 : Gestion des avis et notifications
    - Créer l’entité AvisCommande
    - Mettre en place le système de gestion des avis sur les commandes
    - Créer les notifications par email pour les utilisateurs (inscription, commande, livraison)
    - Tester l’envoi d'emails avec Mailtrap

- Sprint 8 : Interface utilisateur et design
    - Créer la page d’accueil
    - Implémenter le front-end du site (Bootstrap, responsive design)
    - Optimiser l’expérience utilisateur (UX/UI)
    - Tester la navigation et la performance du site

- Sprint 9 : Tests et déploiement
    - Corriger les bugs et ajustements
    - Préparer le déploiement (serveur, base de données, SSL, etc.)
    - Déployer le projet sur un environnement de production
    - Tester l’environnement de production

- Sprint 10 : Suivi post-lancement et améliorations
    - Surveiller les performances du site
    - Collecter les retours des utilisateurs
    - Prioriser les améliorations et nouvelles fonctionnalités à implémenter
    - Planifier les prochaines itérations

## Tests et Qualité
- Test Visuelle Front end

- Tests fonctionnels (vérification de chaque fonctionnalité)
  - Test : Test BackEnd
  - Solution de Paiement
  - Gestion de commande
  - Fonctionnalitées specifique

- Tests de performance
  - temps de chargement
  - Reactivité

- Tests de sécurité
  - Vérification des failles potentielles

- Corrections des bugs et optimisation
  - Bugs
  - Opti

# Étape de Pré-Lancement
## Migration et Préparation
- Migration des données (importation des produits, clients, etc.)
  - Migration des données sur serveur opérationel

- Configuration des noms de domaine et des certificats
  - Nom de domaine et certificats

- Optimisation SEO
  - Opti du SEO (référencement naturel)

- Configuration de la logistique 
  - Configuration de la logistique : Livraison, FDP

- Mise en place des outils d’analyse et de suivi
  - Mise en place des outils d'analyse ( google analitics ou autres ?)
  
- Formation des utilisateurs et des administrateurs
  - Formation du/des administrateurs

## Lancement
- Planification et exécution du plan de lancement
  - Dates
  - Communication
  - Gestions

- Vérification finale avant mise en ligne
  - Verification finale (checklist)

- Mise en ligne du site
  - Mise en ligne

- Surveillance
  - Surveillance en temps réel des performances du site post-lancement
