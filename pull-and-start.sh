function dc {
  docker \
    --tlsverify \
    --tlscacert=ca.pem \
    --tlscert=cert.pem \
    --tlskey=key.pem \
    --host ${HOST}:${PORT} \
    compose \
    -f docker-compose.yml $@
}

OPT_ARGS=""

if [[ ! -z "$DOCKER_COMPOSE_FILE" ]]; then
  OPT_ARGS="-f $DOCKER_COMPOSE_FILE"
fi

dc ${OPT_ARGS} pull
dc ${OPT_ARGS} up --force-recreate --no-build -d