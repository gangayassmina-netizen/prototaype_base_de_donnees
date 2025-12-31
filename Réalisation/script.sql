CREATE DATABASE Réalisation;
USE Réalisation;

create table users (
id int auto_increment primary key,
nom varchar(45),

  email VARCHAR(45) UNIQUE,
  mot_de_passe VARCHAR(45) NOT NULL
);

create table Article(
id int auto_increment primary key,
titre varchar(45),
contenu varchar(45),
statut varchar(45),
users_id  int ,
date_publication varchar(45),
Categorie_idCategorie int
);

create table Commentaire(
id int auto_increment primary key,
 contenu varchar (45),
 date_publication varchar (45),
 Article_id int
 );
 
 create table Categorie(
 id int auto_increment primary key,
 nom varchar(45)
  );
 
CREATE INDEX idx_utilisateur_email
ON Utilisateur(nom);



