SELECT 'DEBUT DE L’ANALYSE' AS Message;
--1 preparation de la base de données
CREATE DATABASE IF NOT EXISTS analyse_performance;
USE analyse_performance;

--2 creation des tables
CREATE TABLE  categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom_categorie VARCHAR(50)
);

CREATE TABLE produits (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom_produit VARCHAR(100),
    prix DECIMAL(10, 2),
    categorie_id INT,
    FOREIGN KEY (categorie_id) REFERENCES categories(id)
);

CREATE TABLE ventes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produit_id INT,
    quantite INT,
    date_vente DATE,
    FOREIGN KEY (produit_id) REFERENCES produits(id)
);

--3 insertion de données
INSERT INTO categories (nom_categorie) VALUES ('Électronique'), ('fournitures');
INSERT INTO produits (nom_produit, prix, categorie_id) VALUES 
('Ordinateur ', 800.00, 1),
('Souris ', 25.00, 1),
('Cahier', 5.00, 2);

INSERT INTO ventes (produit_id, quantite, date_vente) VALUES 
(1, 2, '2024-01-15'),
(2, 5, '2024-01-16'),
(3, 50, '2024-01-17');

--4 requetes d'analyse
SELECT
    c.nom_categorie,
    SUM(p.prix * v.quantite) AS chiffre_affaires_total
FROM categories c
JOIN produits p ON c.id = p.categorie_id
JOIN ventes v ON p.id = v.produit_id
GROUP BY c.nom_categorie
ORDER BY chiffre_affaires_total DESC;
SELECT 'FIN DE L’ANALYSE' AS Message;