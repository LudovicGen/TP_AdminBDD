## TP1 Admin BDD
---
Intervenant/Professeur : Mr DeBest Denis
===
### Création de la base de donées :
- `CREATE DATABASE TP1; USE TP1;`

### Création de la table Clients (nom, prénom, date de naissance et code postal) :
- `CREATE TABLE clients (lastname VARCHAR(50), firstname VARCHAR(50), birthday DATE, postcode INT);`

### Insérez 3 lignes dans cette table :
- `INSERT INTO clients VALUES ('Yves', 'Jean', 1985-10-28, 81000;`
- `INSERT INTO clients VALUES ('Michel', 'Thomas', 1975-02-18, 81100;`
- `INSERT INTO clients VALUES ('Bernard', 'Bruno', 1996-10-19, 81440;`
  
### Affichez seulement les prénoms et codes postaux :
- `SELECT fistname, postcode FROM clients;`
