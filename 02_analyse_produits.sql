-- 1. Création de la base
CREATE DATABASE IF NOT EXISTS analyse_produits;
USE analyse_produits;

-- 2. Table des Produits
CREATE TABLE produits (
    id_produit INT AUTO_INCREMENT PRIMARY KEY,
    nom_produit VARCHAR(100),
    prix_unitaire DECIMAL(10, 2),
    stock INT
);

-- 3. Table des Commandes
CREATE TABLE commandes (
    id_commande INT AUTO_INCREMENT PRIMARY KEY,
    date_vente DATE
);

-- 4. Table de Jonction (Le coeur de la relation Many-to-Many)
CREATE TABLE details_commandes (
    id_ligne INT AUTO_INCREMENT PRIMARY KEY,
    id_commande INT,
    id_produit INT,
    quantite INT,
    CONSTRAINT fk_commande FOREIGN KEY (id_commande) REFERENCES commandes(id_commande),
    CONSTRAINT fk_produit FOREIGN KEY (id_produit) REFERENCES produits(id_produit)
);

-- 5. Insertion de test
INSERT INTO produits (nom_produit, prix_unitaire, stock) VALUES ('Ordinateur', 1000.00, 10), ('Souris', 20.00, 50);
INSERT INTO commandes (date_vente) VALUES (CURDATE());
INSERT INTO details_commandes (id_commande, id_produit, quantite) VALUES (1, 1, 1), (1, 2, 2);