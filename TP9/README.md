## TP9 Admin BDD
---
#### Intervenant/Professeur : Mr DeBest Denis
---
### Créer des Dashboards avec Grafana :

- Reprise du [docker-compose.yml](docker-compose.yml) en rajoutant le service Grafana où on n'y connectera [Prometheuse](prometheus.yml) et MariaDB (MYSQL)
- Lancement du docker-compose: `$ docker-compose up -d`
- Nous accédons à l'interface de Grafana en allant sur http://localhost:3000
- On se connecte grâce à nos identifiant : `admin` et notre mot de passe : `admin`

- Une fois connecté on ajoute nos Datasources `Prometheus` et `MYSQL`
-----
#### Création du Premier dashboard :
- Panel Graphique du taux d'opérations READ :
![Image](screenshoot/Capture%20d’écran_2020-11-24_15-05-47.png?raw=true)

- Panel qui affiche simplement le nombre total de tentatives de connexion refusées :
![Image](screenshoot/Capture%20d’écran_2020-11-24_15-10-05.png?raw=true)

- Panel sous forme de compteur (gauge) qui affiche le temps nécessaire à l'exporter pour scrapper les données liées aux connections depuis le serveur MariaDB, trouvez un format et des limites adaptées :
![Image](screenshoot/Capture%20d’écran_2020-11-24_15-36-36.png?raw=true)
----
#### Création du deuxième dashboard :
- Panel qui affiche un graph avec les comptes utilisateurs créés par jour :
![Image](screenshoot/Capture%20d'écran_2020-11-24_15-30-30.png?raw=true)

- Panel qui affiche le nombre total de clients :
![Image](screenshoot/Capture%20d’écran_2020-11-24_15-43-30.png?raw=true)

- Compteur le nombre de payments de la semaine dernière :
![Image](screenshoot/Capture%20d’écran_2020-11-24_15-49-19.png?raw=true)

- Panel qui affiche le volume de ventes par jour avec des indicateurs de performances :
![Image](screenshoot/Capture%20d’écran_2020-11-24_15-55-15.png?raw=true)

#### Rendu final du Dashboard:
- ![Image](screenshoot/Capture%20d’écran_2020-11-24_15-55-26.png?raw=true)
