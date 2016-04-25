#!/bin/bash
set -e

function abort()
{
	echo "$@"
	exit 1
}

function cleanup()
{
	echo " --> Stopping container"
	docker stop $ID >/dev/null
	docker rm $ID >/dev/null
}

PWD=`pwd`

echo " --> Starting container"
ID=`docker run -d $NAME:$VERSION`
sleep 1

echo " --> Running node --version"
RETVAL=`docker exec $ID /usr/bin/node --version`

if [[ "$RETVAL" != "v$NODEVERSION" ]]; then
	abort "Wrong version returned"
fi

trap cleanup EXIT

