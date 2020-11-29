## TP5 Admin BDD
---
#### Intervenant/Professeur : Mr DeBest Denis
---
### Importer une base de données MySQL en MariaDB:
#### Création du [docker-compose.yaml](docker-compose.yml)
-     version: "3.7"
      services:
        mysql:
          image: mysql:5.7
          restart: on-failure
          environment:
            MYSQL_ROOT_PASSWORD: password
          volumes:
            - ./mysql:/var/lib/mysql
            - ./backups:/backups

        maria:
          image: mariadb:10.4
          restart: on-failure
          environment:
            MYSQL_ROOT_PASSWORD: password
          volumes:
            - ./maria:/var/lib/mysql
            - ./backups:/backups
- Celui-ci créer donc en commun un dossier Backups
#### Lancer le docker-compose :
- `$ docker-compose up -d`

#### Executer le service MYSQL avec Bash :
- `$ docker-compose exec mysql bash`

#### Création de la base de données :
    $ mysql -u root -ppassword
    # CREATE DATABASE users;
    # USE users;
    # CREATE TABLE tp5 (firstname VARCHAR(50), lastname VARCHAR(50));
    # INSERT INTO tp5 VALUES ('Benoit', 'Yves');
    # INSERT INTO tp5 VALUES ('Lucas', 'Dupont');
    # INSERT INTO tp5 VALUES ('Ludivine', 'Capelli');

#### Dump de la base de données :
- `$ mysqldump -u root -ppassword --database users > backups/mydatabase.sql`

#### Connexion au serveur MariaDB et importation de la base exporté :
    $ docker-compose exec maria bash
    # mysql -u root -ppassword < backups/mydatabase.sql
 

