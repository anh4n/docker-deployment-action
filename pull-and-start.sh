docker-compose \
    --tlsverify \
    --tlscacert=ca.pem \
    --tlscert=cert.pem \
    --tlskey=key.pem \
    --host ${INPUT_HOST}:${INPUT_PORT} \
    pull
    
docker-compose \
    --tlsverify \
    --tlscacert=ca.pem \
    --tlscert=cert.pem \
    --tlskey=key.pem \
    --host ${INPUT_HOST}:${INPUT_PORT} \
    up --force-recreate --no-build -d