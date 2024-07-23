@echo off

CALL docker-compose -f ../docker/docker-compose-local.yaml down
CALL copy "./vault.json" "../docker/mount/vault/config"
CALL copy "./nginx.conf" "../docker/mount/nginx/conf"
CALL docker-compose -f ../docker/docker-compose-local.yaml up -d
CALL docker exec -it rabbitmq rabbitmq-plugins enable rabbitmq_management
