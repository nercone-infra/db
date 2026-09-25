#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

sudo git pull

docker compose kill -s HUP postgres
