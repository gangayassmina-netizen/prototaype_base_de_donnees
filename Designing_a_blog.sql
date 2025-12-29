
CREATE DATABASE bloge;
USE bloge;

CREATE TABLE Utilisateur (
    id_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(45) NOT NULL
);

CREATE TABLE Categorie (
    id_categorie INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(45) NOT NULL UNIQUE
);

CREATE TABLE Article (
    id_article INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(45) NOT NULL,
    contenu TEXT NOT NULL,
    date_publication DATETIME NOT NULL,
    statut ENUM('brouillon','publié') NOT NULL,
    id_utilisateur INT NOT NULL,
    id_categorie INT NOT NULL,
    FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur(id_utilisateur),
    FOREIGN KEY (id_categorie) REFERENCES Categorie(id_categorie)
);

CREATE TABLE Commentaire (
    id_commentaire INT AUTO_INCREMENT PRIMARY KEY,
    contenu TEXT NOT NULL,
    date_publication DATETIME NOT NULL,
    id_utilisateur INT NOT NULL,
    id_article INT NOT NULL,
    FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur(id_utilisateur),
    FOREIGN KEY (id_article) REFERENCES Article(id_article)
);

 CREATE INDEX idx_utilisateur_email
ON Utilisateur(email);