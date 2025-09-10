# Projet Adaopte

## Objectif
Ce projet a pour but de reproduire plusieurs pages d'un site web donné dans le cadre d’un exercice pratique en groupe d'une durée de deux semaines.
  
Les objectifs principaux étant de :
-  recréer une page web au plus proche possible et de pratiquer la création d'une base de donnée et de pouvoir l'utiliser.
- Avoir un affichage Accessible et Responsive
- Apprendre à utiliser un framework Css ( dans notre cas il s'agit de Tailwind Css )
- Manipulation du DOM et faire des recherches  dans une base de donnée
- Créer une base de donnée avec un schéma et savoir faire des requêtes SQL pour intéragir avec

## Technologies utilisées
- **HTML5** : structuration des pages
- **Tailwind** : framework pour la mise en forme et le style
- **JavaScript** : pour relier la page HTML avec notre base de donnée
- **SQLite** : Création et gestion de bases de données
- **SQL.js** : Utilisation de la base donnée dans un environnement Javascript sans utiliser de Backend

## Architecture du projet

_A voir si on refait l'architecture pour séparer tout nos fichiers dans des dossiers séparés ( bonne pratique ? ) --> mettre nos fichiers html dans un dossier séparé et peut être créer plusieurs fichiers sql pour nos différentes bases de données même si on ne se sert que d'une seule ?_

- `homepage.html` : page d’accueil
- `adoption_page.html` : page listant les animaux à adopter
- `guide.html` : page en cours de construction
- `volunteer_form` : page en cours de construction
- `stylesheets/` : fichiers CSS
- `javascript/` : scripts JavaScript
- `assets/` : images et ressources visuelles
- `animal.sql` : script de création et d’initialisation de la base de données
- `animal.db` : base de donnée qui sert à la création de nos cartes


## Aperçu
Homepage :
<img alt="homepage" src="/assets/README/homepage.png"/>

Page d'adoption :
<img alt="adoption_page" src="/assets/README/adoption_page.png">

## Utilisation
1. Cloner le projet :
   ```bash
   git clone https://github.com/WernerWlff/projet_Adaopte.git
2. Lancer le projet depuis LiveServer ou en lançant le fichier homepage.html
