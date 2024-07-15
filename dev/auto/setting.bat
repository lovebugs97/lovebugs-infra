@echo off

CALL docker-compose -f ../docker/docker-compose-local.yaml down
CALL echo Copy vault.json file
CALL copy "./vault.json" "../docker/mount/vault/config"
CALL docker-compose -f ../docker/docker-compose-local.yaml up -d
CALL docker exec -it rabbitmq rabbitmq-plugins enable rabbitmq_management
