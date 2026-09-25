#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER mail WITH PASSWORD '${MAIL_DB_PASSWORD}';
    CREATE DATABASE mail OWNER mail;
    CREATE USER roundcube WITH PASSWORD '${ROUNDCUBE_DB_PASSWORD}';
    CREATE DATABASE roundcube OWNER roundcube;
EOSQL
