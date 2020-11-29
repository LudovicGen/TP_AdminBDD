
CREATE USER IF NOT EXISTS 'replicant'@'%' identified BY 'password';

GRANT replication SLAVE ON *.* TO replicant;

FLUSH PRIVILEGES;