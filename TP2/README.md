## TP2 Admin BDD
---
#### Intervenant/Professeur : Mr DeBest Denis
---
### Création de la base de donées events :
- `CREATE DATABASE events; USE events;`

### Ajoutez une table public_events(event_date, event_name, event_age_requirement) :
- `CREATE TABLE public_events (event_date DATE, event_name VARCHAR(50), event_age_requirement TINYINT);`
- `CREATE TABLE private_events (event_date DATE, event_name VARCHAR(50), event_age_requirement TINYINT);`

### Créez un utilisateur event_manager | password :
- `GRANT ALL PRIVILEGES ON events TO 'event_manager'@'localhost' IDENTIFIED BY 'password';`
  
### Créez un utilisateur event_supervisor | password :
- `GRANT ALL PRIVILEGES ON events.public_events TO 'event_supervisor'@'localhost' IDENTIFIED BY 'password';`
### Validation des droits :
- `FLUSH PRIVILEGES;` 

### Connexion à l'utilisateur event_manager :
- `mysql -u event_manager -ppassword`
#### Insérez 3 lignes de données dans les tables :
- `INSERT INTO public_events VALUES (NOW(), 'Michel', '45');`
- `INSERT INTO public_events VALUES (NOW(), 'Ludovic', '25');`
- `INSERT INTO public_events VALUES (NOW(), 'Benoît', '28');`
---
- `INSERT INTO private_events VALUES (NOW(), 'Michel', '45');`
- `INSERT INTO private_events VALUES (NOW(), 'Ludovic', '25');`
- `INSERT INTO private_events VALUES (NOW(), Benoît', '28');`
### Connexion à l'utilisateur event_supervisor :
- `mysql -u event_supervisor -ppassword`
#### Lire le contenu de la table public_events :
- `USE events;`
- `SELECT * FROM public_events;`
- *Affichage des resultats de la table pulic_events*
---
- `SELECT * FROM private_events;`
- *command denied to user 'event_supervisor'@'localhost' for table 'private_events'*

### Reconnexion en utilisateur ROOT :
- `mysql -u root -pmypassword`
#### Suppression de l'utilisateur event_supervisor :
- `DROP USER 'event_supervisor'@'localhost';`
- `FLUSH PRIVILEGES;`
