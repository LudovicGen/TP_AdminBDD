## TP4 Admin BDD
---
#### Intervenant/Professeur : Mr DeBest Denis
---
### Mettre en place une stratégie de backups:
#### Premiére partie :
- Créer un [Dockerfile](Dockerfile) depuis une image mysql latest
- `FROM mysql:latest`
- Installation et mise à jour des paquets nécessaire
- `RUN apt-get update && apt-get install -y cron logrotate vim nano`
- Le tout configuré et lancé depuis un [docker-compose.yaml](docker-compose.yml)
----
#### Deuxième partie :
- `docker-compose exec mysql bash`
- On active le cron
- `crontab -e`
- On définit une stratégie de backups qui génère un dump de la base de données tous les lundis à 17h :
- `17 0 * * 1 mysqldump -uroot -ppassword --all-databases | gzip -9 -c > /backups/all_databases"$(date +%Y-%m-%d)".sql.gz`
- On execute le service cron `service cron start`
---
#### Troisième partie :
- On configure logrotate pour un dump journalier en gardant les 5 derniers dumps au format bz2 :
- 
       /backups/"$(date +%Y-%m-%d)".gz {
        rotate 5
        daily
        postrotate
                /home/backups/"$(date +%Y-%m-%d)"
        compresscmd usr/bin/bzip2
        compressext .bz2
        endscript
        }


