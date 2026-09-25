#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

sudo git pull

docker compose exec -u postgres postgres pg_ctl reload
