## TP8 Admin BDD
---
#### Intervenant/Professeur : Mr DeBest Denis
---
### Monitoring :

### Première partie :
- Création d'un [docker-compose.yml](docker-compose.yml) qui réunit :
  - un serveur MariaDB
  - un serveur [Prometheus](prometheus.yml)
  - un serveur mysql-exporter
- Ainsi les reliant entre eux
#### Une fois les serveurs lancés, on peut accéder à Prometheus via http://localhost:9090 
---
### Deuxième partie :
- Créez un graphique qui affiche toutes les opérations de lectures et d'écritures :
![Image](screenshoot/Capture%20d’écran_2020-11-17_15-38-42.png?raw=true)

- Créez un graphique qui affiche la variation du taux d'opérations de lectures et d'écritures en prenant en compte la moyenne sur les 5 dernières minutes :
![Image](screenshoot/Capture%20d’écran_2020-11-17_15-40-00.png?raw=true)