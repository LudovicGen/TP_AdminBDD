## TP6 Admin BDD
---
#### Intervenant/Professeur : Mr DeBest Denis
---
### Mise en place d'un serveur de replication:
#### Création du [docker-compose.yml](docker-compose.yml) :
 - Définissant les 2 services mariadb-master et maridb-slave (instances MariaDB)

#### On ajoute les fichiers de configuration pour les serveurs [Master](config/master.cnf) et [Slave](config/slave.cnf)

#### On ajoute un [Script SQL](script/masterReplication.sql) qui donnera les droits de réplication à l'utilisateur Master
- On lance notre script créer

-     $ docker-compose exec maria-master bash
      # mysql -u root -ppassword < script/masterReplication.sql

      # CREATE DATABASE users;
      # USE users;
      # CREATE TABLE tp6 (firstname VARCHAR(50), lastname VARCHAR(50));
      # INSERT INTO tp6 VALUES ('Eloise', 'Dupont');
      # INSERT INTO tp6 VALUES ('Florian', 'Durant');
      # INSERT INTO tp6 VALUES ('Nathan', 'Ben');

      # mysql -u root -ppassword --databases users > backups/mydatabase.sql

#### On se connecte au serveur Slave où nous pouvons récupérer le script de création de la base de données exporté :
      CHANGE MASTER TO
      MASTER_HOST='maria',
      MASTER_USER='replicant',
      MASTER_PASSWORD='replicant_password',
      MASTER_PORT=3306,
      MASTER_LOG_FILE='master1-bin.000005',
      MASTER_LOG_POS=800,
      MASTER_CONNECT_RETRY=10;

#### On lance la réplication sur Slave :
- `START SLAVE;`

#### On vérifie le status de la réplication :
- `SHOW SLAVE STATUS;`
- 
      Slave_IO_Running: Yes
      Slave_SQL_Running: Yes

