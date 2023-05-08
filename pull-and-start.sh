function dc {
  docker-compose \
    --tlsverify \
    --tlscacert=ca.pem \
    --tlscert=cert.pem \
    --tlskey=key.pem \
    --host ${HOST}:${PORT} $@
}

OPT_ARGS=""

if [[ -v DOCKER_COMPOSE_FILE ]]; then
  OPT_ARGS="-f docker-compose.yml -f ${DOCKER_COMPOSE_FILE}"
fi

dc ${OPT_ARGS} pull
dc ${OPT_ARGS} up --force-recreate --no-build -d