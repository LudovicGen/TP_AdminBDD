## TP3 Admin BDD
---
#### Intervenant/Professeur : Mr DeBest Denis
---
### Création du [Script SQL](script.sql) qui :
#### Creation de la base de données
- `CREATE DATABASE IF NOT EXISTS teams; USE teams;`
#### Création des tables
- `CREATE TABLE IF NOT EXISTS games (match_date DATE, victory BOOLEAN, observation TEXT);`
- `CREATE TABLE IF NOT EXISTS players (firstname VARCHAR(50), lastname VARCHAR(50), start_date DATE);`
#### Donner tous les droits sur la table games
- `GRANT ALL PRIVILEGES ON games TO 'manager'@'localhost';`
#### Donner les droits d'écriture et de lecture sur la table players à un nouvel utilisateur recruiter
- `GRANT INSERT, SELECT ON players TO 'recruiter'@'localhost' IDENTIFIED BY 'recruiter_password';`
- `FLUSH PRIVILEGES;`
---
### Exécuter le script pour les utilisateur adéquat :
- `mysql -u manager -pmanager_password`
- `mysql -u recruiter -precruiter_password`

### Ajouter trois lignes dans la table games à l'aide d'un [Script SQL](insert.sql) :
- `INSERT INTO teams.games  VALUES (NOW(), false, "obeservation");`
- `INSERT INTO teams.games  VALUES (NOW(), true, "obeservation");`
- `INSERT INTO teams.games  VALUES (NOW(), false, "obeservation");`
- `INSERT INTO teams.games  VALUES (NOW(), false, "obeservation");`
- `INSERT INTO teams.games  VALUES (NOW(), true, "obeservation");`
### L'éxecuter avec l'utilisateur adéquat 
- `mysql -u manager -pmanager_password;`

