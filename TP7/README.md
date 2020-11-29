## TP7 Admin BDD
---
#### Intervenant/Professeur : Mr DeBest Denis
---
### Mise en place d'un cluster Galera:

#### Création d'un [docker.compose.yml](docker-compose.yml) qui instancie 3 serveurs MariaDB

#### On ajoute la [configuration](config/grastate.dat) nécessaire pour que les serveurs puissent communiquer entre eux
      # GALERA saved state
      version: 2.1
      uuid:    5981f182-a4cc-11e6-98cc-77fabedd360d
      seqno:   1234
      safe_to_bootstrap: 1

#### On ajoute la configuration nécessaire pour chaque node :
- [configuration node 1](config/node.1.cnf)
- 
      [mysqld]
      wsrep_node_address="node1.localhost"
      wsrep_node_name="node1"
      wsrep_cluster_address="gcomm://node1.localhost,node2.localhost,node3.localhost"

      wsrep_provider=/usr/lib/libgalera_smm.so
      binlog_format=ROW
      default_storage_engine=InnoDB
      innodb_autoinc_lock_mode=2
      innodb_doublewrite=1
      query_cache_size=0
      wsrep_on=ON
- [configuration node 2](config/node.2.cnf)
-
      [mysqld]
      wsrep_node_address="node1.localhost"
      wsrep_node_name="node2"
      wsrep_cluster_address="gcomm://node1.localhost,node2.localhost,node3.localhost"

      wsrep_provider=/usr/lib/libgalera_smm.so
      binlog_format=ROW
      default_storage_engine=InnoDB
      innodb_autoinc_lock_mode=2
      innodb_doublewrite=1
      query_cache_size=0
      wsrep_on=ON
- [configuration node 3](config/node.3.cnf)
-
      [mysqld]
      wsrep_node_address="node1.localhost"
      wsrep_node_name="node3"
      wsrep_cluster_address="gcomm://node1.localhost,node2.localhost,node3.localhost"

      wsrep_provider=/usr/lib/libgalera_smm.so
      binlog_format=ROW
      default_storage_engine=InnoDB
      innodb_autoinc_lock_mode=2
      innodb_doublewrite=1
      query_cache_size=0
      wsrep_on=ON

#### Importez un dump quelconque sur un des nodes et vérifiez que celui ci est bien présent sur les autres nodes

#### Éteignez toutes les nodes et trouvez celui depuis lequel vous pouvez bootstrapper le cluster au redémarrage

#### Redémarrez les nodes et vérifiez le bon fonctionnement du cluster