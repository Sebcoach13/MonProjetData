-- 1. Création de la base
CREATE DATABASE IF NOT EXISTS gestion_ventes;
USE gestion_ventes;

-- 2. Création de la table Clients (la table parente)
CREATE TABLE IF NOT EXISTS clients (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50),
    email VARCHAR(100) UNIQUE
);

-- 3. Création de la table Commandes 
CREATE TABLE IF NOT EXISTS commandes (
    id_commande INT AUTO_INCREMENT PRIMARY KEY,
    date_commande DATE,
    montant DECIMAL(10, 2),
    id_client INT,
    CONSTRAINT fk_client_commande FOREIGN KEY (id_client) REFERENCES clients(id_client)
);

-- 4. Insertion de données de test
INSERT INTO clients (nom, prenom, email) VALUES ('Dupont', 'Jean', 'jean.dupont@email.com');

INSERT INTO commandes (date_commande, montant, id_client) VALUES 
('2024-05-01', 45.50, 1),
('2024-05-02', 120.00, 1);

-- 5. Requête de Jointure 
SELECT clients.prenom, clients.nom, commandes.date_commande, commandes.montant
FROM commandes
INNER JOIN clients ON commandes.id_client = clients.id_client;