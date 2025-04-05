#!/bin/bash

SQL_FILE=$1

if [ -z "$SQL_FILE" ]; then
  echo "Usage: ./run_query.sh path/to/query.sql"
  exit 1
fi

HOST="localhost"
if [ -n "$CODESPACES" ] || grep -q "devcontainer" /proc/1/cgroup; then
  HOST="db"
fi

export PGPASSWORD=password
psql -h $HOST -U user -d mydb -f "$SQL_FILE"
