#!/bin/bash

echo " --> Testing sample app"

set -e

function abort()
{
	echo "$@"
	exit 1
}

function cleanup()
{
	echo " --> Stopping container"
	docker-compose down &>/dev/null
}

cd ./sample

docker-compose build &>/dev/null
echo " --> Starting container"
docker-compose up -d &>/dev/null
sleep 1

trap cleanup EXIT

RETVAL=$(curl -s -GET http://$(docker-machine ip):8080)

if [[ "$RETVAL" != "Hellow World!" ]]; then
    abort "Did not get Hello World!"
fi



