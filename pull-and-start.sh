docker-compose \
    --tlsverify \
    --tlscacert=ca.pem \
    --tlscert=cert.pem \
    --tlskey=key.pem \
    --host ${HOST}:${PORT} \
    pull

docker-compose \
    --tlsverify \
    --tlscacert=ca.pem \
    --tlscert=cert.pem \
    --tlskey=key.pem \
    --host ${HOST}:${PORT} \
    up --force-recreate --no-build -d