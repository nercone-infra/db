#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

echo "> Pull"

sudo git pull

echo
echo "> Images"

docker compose pull

echo
echo "> Start"

docker compose up -d

echo
echo "> Reload"

./reload.sh
