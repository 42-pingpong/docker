#! /bin/bash

source .env

echo "개발환경 볼륨 경로: [$VOLUMEPATH]"

if [ ! -d "$VOLUMEPATH" ]; then
	mkdir $VOLUMEPATH
	mkdir $VOLUMEPATH/frontend
	mkdir $VOLUMEPATH/backend
	mkdir $VOLUMEPATH/postgres
	mkdir $VOLUMEPATH/pgadmin
fi
