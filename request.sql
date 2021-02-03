-- TIPS 
-- USE + name 
-- SHOW TABLES
-- DROP TABLE => supprime
-- DESCRIBE TABLE
-- DELETE FROM time where id in (7,8,9);


-- Partie 1 : Création et suppression de bases de données

-- ex 1 
CREATE DATABASE languages;

-- ex 2 
CREATE DATABASE webDevelopment CHARACTER SET utf8 COLLATE utf8_general_ci;

-- ex 3 
CREATE DATABASE IF NOT EXISTS frameworks DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

-- ex 4 
CREATE DATABASE IF NOT EXISTS languages CHARACTER SET utf8 COLLATE utf8_general_ci;

-- ex 5 
DROP DATABASE languages;

-- ex 6 
DROP DATABASE IF EXISTS frameworks;

-- ex 7 
DROP DATABASE IF EXISTS languages;

-- Partie 2 : Création de tables

-- ex 1 
CREATE TABLE languages (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    language VARCHAR(100) );

-- ex 2 
CREATE TABLE tools (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    tool VARCHAR(100) );

-- ex 3 
CREATE TABLE frameworks  (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(100) );

-- ex 4
CREATE TABLE libraries   (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    library VARCHAR(100) );

-- ex 5
CREATE TABLE ide   (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    library VARCHAR(100) );

-- ex 6 
CREATE TABLE frameworks    (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    library VARCHAR(100) );

-- ex 7 
DROP TABLE IF EXISTS tools;

-- ex 8
DROP TABLE libraries;

-- ex 9
DROP TABLE ide;

-- TP 
CREATE TABLE client (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lastname VARCHAR(100),
    firstname VARCHAR(100),
    birthdate DATE,
    adresse VARCHAR(255),
    firstPhoneNumber INT,
    secondPhoneNumber INT,
    mail VARCHAR(255) 
    );

-- Partie 3 : Modification de tables

-- ex 1
ALTER TABLE languages
ADD versions VARCHAR(255);

-- ex 2 
ALTER TABLE frameworks 
ADD version INT;

-- ex 3 
ALTER TABLE languages
CHANGE versions version INT;

-- 4 
ALTER TABLE languages
CHANGE name framework VARCHAR(255);

-- 5
ALTER TABLE languages
CHANGE name framework VARCHAR(255);

-- Partie 4 : Insertion de données

INSERT INTO frameworks (name, version) VALUES 
('Javascript', 'version 5'),
('PHP', 'version 5.2'),
('PHP', 'version 5.4'),
('HTML', 'version 5'),
('Javascript', 'version 5.1'),
('Javascript', 'version 6'),
('Javascript', 'version 7'),
('Javascript', 'version 8'),
('PHP', 'version 7');

-- Partie 5 : Sélection de données

-- Exercice 1
SELECT * FROM languages


-- Exercice 2 
SELECT * FROM languages
WHERE framework IN ('PHP');

-- Exercice 3
SELECT * FROM languages
WHERE framework IN ('PHP', 'Javascript');

-- Exercice 4
SELECT * FROM languages
WHERE id IN (3, 5, 7);

-- Exercice 5
SELECT * FROM languages
WHERE language = 'Javascript' LIMIT 2 ;

-- Exercice 6 
SELECT * FROM languages 
WHERE NOT language = 'PHP'; 
OU
WHERE language != 'PHP'; 


-- Exercice 7
SELECT * FROM languages 
ORDER BY language;

-- Partie 6 : Sélection de données - Élargir les possibilités de la clause WHERE

-- Exercice 1
SELECT * FROM languages
WHERE version = 'version 6';

SELECT * FROM languages
WHERE version LIKE = '2.%';

-- Exercice 2
SELECT * FROM languages
WHERE id IN (1, 3);

-- Exercice 3 
SELECT * FROM ide 
WHERE date > '2010-01-01' AND date < '2021-12-31';

-- Partie 8 : Suppression et modification de données
-- Création de la base
CREATE DATABASE IF NOT EXISTS `development`;
-- On se positione dans la base nouvellement créé
USE `development`;
-- Création de la table languages
CREATE TABLE IF NOT EXISTS `languages` (
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
`name` VARCHAR(40) NOT NULL,
PRIMARY KEY (`id`)
)ENGINE=INNODB;
-- Création de la table frameworks qui contient une clé étrangère
CREATE TABLE IF NOT EXISTS `frameworks` (
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
`name` VARCHAR(40) NOT NULL,
`languagesId` INT NOT NULL,
PRIMARY KEY (`id`)
)ENGINE=INNODB;
-- Insertion des données dans la table languages
INSERT INTO `languages` (`name`) VALUES ('Assembleur');
INSERT INTO `languages` (`name`) VALUES ('C');
INSERT INTO `languages` (`name`) VALUES ('C++');
INSERT INTO `languages` (`name`) VALUES ('Java');
INSERT INTO `languages` (`name`) VALUES ('HTML');
INSERT INTO `languages` (`name`) VALUES ('CSS');
INSERT INTO `languages` (`name`) VALUES ('JavaScript');
INSERT INTO `languages` (`name`) VALUES ('PHP');
INSERT INTO `languages` (`name`) VALUES ('C#');
INSERT INTO `languages` (`name`) VALUES ('VB');
INSERT INTO `languages` (`name`) VALUES ('Python');
INSERT INTO `languages` (`name`) VALUES ('Ruby');
INSERT INTO `languages` (`name`) VALUES ('Swift');
-- Insertion des données dans la table frameworks
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Qt',3);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('SDK Android',4);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Bootstrap',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Foundation',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('KNACSS',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Avalanche',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Miligram',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Skeleton',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Hoisin',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Inuit',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Mimic',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Ministrap',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Lotus',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Jquery',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Angular',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('ReactJS',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Vue.js',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Ember.js',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Meteor.js',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Laravel',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Symfony',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('CodeIgniter',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Yii',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Phalcon',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Lumen',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Silex',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Slim',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('.NET',9);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('.NET',10);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Django',11);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Ruby On Rails',12);

-- exo 1 
SELECT frameworks.name as frameworks, languages.name as language 
FROM languages 
LEFT JOIN frameworks 
ON frameworks.languagesId = languages.id;

-- exo 2 
SELECT frameworks.name as frameworks, languages.name as language 
FROM languages 
INNER JOIN frameworks 
ON frameworks.languagesId = languages.id;

-- exo 3 
SELECT languages.name as language, COUNT(frameworks.name) as totalframework
FROM languages 
INNER JOIN frameworks 
ON frameworks.languagesId = languages.id
GROUP BY languages.name;

-- exo 4 
SELECT languages.name as language, COUNT(frameworks.name) as totalframework
FROM languages 
INNER JOIN frameworks 
ON frameworks.languagesId = languages.id
GROUP BY languages.name
HAVING COUNT(frameworks.name) > 3;

-- training

SELECT * FROM propertyseller.customer;

INSERT INTO time (timeSlot) VALUES
('16:00:00'),
('18:00:00'),
('20:00:00');

INSERT INTO time (timeSlot) VALUES ('15:00:00'), ('16:00:00'),('18:00:00')

INSERT INTO property (name, postal, price, ID_Type)
VALUES  ('Villa 2', '84 000', '780000', 5),
('Villa 3', '84 000', '650000', 5),
('Villa 4', '82 000', '45000', 5),
('Villa 5', '80 000', '900000', 5),
('Appartement 1', '80 000', '500000', 6),
('Appartement 2', '81 000', '230000', 6),
('Appartement 3', '80 400', '350000', 6),
('Appartement 4', '86 000', '600000', 6),
('Appartement 5', '87 500', '95000', 6),
('Terrain 1', '88 700', '900000', 7),
('Terrain 2', '81 500', '900000', 7),
('Terrain 3', '82 000', '900000', 7),
('Terrain 4', '80 000', '900000', 7);

INSERT INTO customer (firstname, lastname, mail, budget, ID_Type)
VALUES ('Anne', 'Delcourt', 'delcourt@mail.com', '700000', 5),
('Mickael', 'Javascript', 'mike@mail.com', '500000', 6),
('Théo', 'Photo', 'photo@mail.com', '630000', 5),
('Matthias', 'Bootstrap', 'framework@mail.com', '300000', 7),
('Raphael', 'Github', 'push@mail.com', '700000', 5),
('Christopher', 'Marvel', 'thor@mail.com', '700000', 6),
('Céline', 'Japon', 'osaka@mail.com', '70000', 5),
('Flavie', 'Tailwind', 'graphiste@mail.com', '700000', 5),
('Houlé', 'Foot', 'but@mail.com', '700000', 5),
('Anouson', 'Merise', 'formateur@mail.com', '950000', 7),
('Victor', 'Starwars', 'sabrelaser@mail.com', '700000', 5);7

INSERT INTO meeting (date, ID_Property, ID_Customer, ID_Time)
VALUES ('2021-03-02', 22, 2, 5);
('2021-06-24', 18, 11, 13),
('2021-03-02', 16, 9, 15),
('2021-04-09', 19, 7, 4),
('2021-04-12', 22, 6, 14),


-- préparation 
SELECT * 
FROM property 
INNER JOIN type
ON property.ID_Type = type.ID
ORDER BY price;

-- Il faudra pouvoir afficher tous les biens par ordre de prix (nom du bien, son type, son code postal, son prix)
SELECT price, name, postal, model 
FROM property 
INNER JOIN type
ON property.ID_Type = type.ID
ORDER BY price;

-- Il faudra pouvoir afficher les rendez-vous par ordre chronologique (date et créneau horaire du rendez-vous, nom du bien, son type, son code postal, son prix, nom et prénom du client)
SELECT date, timeSlot, postal, price, lastname, firstname 
FROM meeting  
INNER JOIN customer
ON meeting.ID_Customer = customer.ID
INNER JOIN property
ON meeting.ID_Property = property.ID
INNER JOIN time
ON time.ID = meeting.ID_time
INNER JOIN type 
ON type.ID = property.ID_Type

-- Il faudra pouvoir afficher les clients par type de bien qu'ils recherchent (nom et prénom du client, type de bien, budget)
SELECT lastname, firstname, model, budget
FROM customer
INNER JOIN type
ON customer.ID_Type = type.ID
