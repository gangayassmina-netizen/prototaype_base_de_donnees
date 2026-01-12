CREATE DATABASE Prototayp_Dashboard;
USE Prototayp_Dashboard;


create table users (
id int auto_increment primary key,
nom varchar(45),

  email VARCHAR(45) UNIQUE,
  mot_de_passe VARCHAR(45) NOT NULL
);
 
  create table Categorie(

 id int auto_increment primary key,
 nom varchar(45)
  );
  

CREATE TABLE Article (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titre VARCHAR(45),
  contenu VARCHAR(45),
  statut VARCHAR(45),
  users_id INT,
  date_pub VARCHAR(45),
  Categorie_idCategorie INT,
  FOREIGN KEY (users_id) REFERENCES users(id),
  FOREIGN KEY (Categorie_idCategorie) REFERENCES Categorie(id)
);

create table Commentaire(
id int auto_increment primary key,
 contenu varchar (45),
date_pub DATE,
 Article_id int
 );
 
 SELECT titre, date_pub FROM Article;

SELECT * 
FROM users
WHERE nom LIKE 'EL%';



SELECT *
FROM Article
WHERE users_id = 1
ORDER BY date_pub ASC;

SELECT *
FROM Article
WHERE DATE(date_pub) = CURDATE();


SELECT COUNT(*) AS nb_articles
FROM Article a
JOIN users u ON a.users_id = u.id
WHERE u.nom = 'Ahmed Alami'
  AND a.statut = 'Publié';
  
  SELECT 
    MONTH(date_pub) AS mois,
    COUNT(*) AS nb_articles
FROM Article
WHERE statut = 'Publié'
  AND YEAR(date_pub) = 2025
GROUP BY mois
ORDER BY mois;



UPDATE Article
SET date_pub = '2026-01-02'
WHERE id = 1;


UPDATE Article
SET statut = 'Archivé'
WHERE id = 1;

DELETE FROM Article
WHERE users_id = 2;

