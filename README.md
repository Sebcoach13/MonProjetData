Projet d'Apprentissage SQL - Analyse de Données
Ce dépôt contient mes premiers projets concrets réalisés avec MySQL et HeidiSQL. L'objectif est de démontrer la mise en place de bases de données relationnelles et l'extraction d'informations stratégiques (Business Intelligence).

Projets inclus
1. Gestion des Ventes (Relation 1:N)
Fichier : 01_gestion_ventes.sql

Concept : Gestion d'un annuaire clients lié à un historique de commandes.

Compétences démontrées :

Création de tables avec clés primaires et étrangères.

Utilisation de la contrainte UNIQUE pour les emails.

Maîtrise des jointures (INNER JOIN) pour lier les noms des clients aux montants des ventes.

2. Analyse de Produits E-commerce (Relation N:N)
Fichier : 02_analyse_produits.sql

Concept : Système complexe permettant de gérer des commandes contenant plusieurs produits différents via une table de jonction.

Compétences démontrées :

Modélisation d'une relation "Plusieurs-à-Plusieurs".

Calcul de stocks et de prix unitaires.

Structure prête pour l'analyse de paniers moyens et de tops ventes.

Outils utilisés
Serveur : Laragon (MySQL)

Interface : HeidiSQL

Langage : SQL (Structured Query Language)

Perspectives Data
Ces scripts permettent de répondre à des problématiques business réelles :

Identifier les meilleurs clients.

Calculer le chiffre d'affaires par produit.

Gérer l'intégrité des données pour éviter les erreurs de facturation.