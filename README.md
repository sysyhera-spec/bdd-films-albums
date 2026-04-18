# Base de données Films & Albums

Projet de conception et implémentation d'une base de données relationnelle de gestion de films et de musiques, réalisé dans le cadre du cours de Bases de Données (Master 2 MIASHS – Université Grenoble Alpes, 2025-2026).

## Description

Ce projet part d'un schéma relationnel existant présentant des anomalies d'intégrité, et consiste à l'analyser, le normaliser jusqu'à la 3ème forme normale (3NF), puis l'implémenter avec ses contraintes et ses données.

## Contenu du projet

### Partie I – Conception et normalisation

Analyse table par table du schéma initial :
- Identification des dépendances fonctionnelles
- Vérification des contraintes référentielles
- Détection des anomalies (valeurs nulles, incohérentes, clés étrangères non respectées)
- Proposition d'un schéma amélioré en 3NF

La table `AVIS` a notamment été décomposée en `AVIS_FILM` et `AVIS_ALBUM`, et `HISTORIQUE_PROPOSITION` en `HISTORIQUE_PROPOSITION_FILM` et `HISTORIQUE_PROPOSITION_ALBUM`, pour éviter les dépendances partielles et assurer l'intégrité des données.

### Partie II – Définition de la base de données

Schéma final normalisé (10 tables) :

```
ARTISTE (idArtiste, nom, codePays [FK], naissance, type)
FILM (idFilm, titre, annee, genre, idRealisateur [FK], codePays [FK])
ALBUM (idAlbum, titre, annee, genre, idArtistePrincipal [FK], label)
UTILISATEUR (idUser, nom, age, codePays [FK])
AVIS_FILM (idAvis, idUser [FK], idFilm [FK], note, commentaire, dateAvis)
AVIS_ALBUM (idAvis, idUser [FK], idAlbum [FK], note, commentaire, dateAvis)
PAYS (codePays, nom)
PARTICIPE_FILM (idArtiste [FK], idFilm [FK], role)
HISTORIQUE_PROPOSITION_FILM (idUser [FK], idFilm [FK], dateProposee)
HISTORIQUE_PROPOSITION_ALBUM (idUser [FK], idAlbum [FK], dateProposee)
```

## Contraintes et triggers

Contraintes SQL implémentées :
- Clés primaires et clés étrangères avec comportement `ON DELETE SET NULL` pour `codePays`
- Contraintes `NOT NULL` sur les attributs essentiels
- `DEFAULT CURRENT_DATE` sur les dates d'avis

Triggers créés :
- **Validation de la note** : rejet de toute note hors de l'intervalle [0, 10] à l'insertion
- **Unicité de l'avis** : un utilisateur ne peut laisser qu'un seul avis par film ou par album
- **Vérification du type d'artiste** : le réalisateur d'un film doit être de type `'R'`, l'artiste principal d'un album de type `'M'`

## Requêtes exemples

Le projet inclut des requêtes SQL couvrant notamment :
- Recherche de films/albums par réalisateur, genre et période
- Calcul des moyennes de notes par film et par album
- Top 5 des films et albums les mieux notés
- Genre de film préféré par tranche d'âge (avec sous-requêtes imbriquées)
- Films et albums sans aucun avis

## Fichiers

```
├── bdd_schema.sql    # Création des tables, contraintes et triggers
└── bdd_donnees.sql   # Insertion des données
```

## Technologies

- SQL / SQLite
- Modélisation relationnelle (3NF, MCD)

## Auteurs

Projet réalisé en binôme dans le cadre du cours de Bases de Données – Master 2 MIASHS DCISS, UGA.
