#!/bin/bash
export MYSQL_HOST=127.0.0.1
export MYSQL_PORT=3306
export MYSQL_USER=root
export MYSQL_PASSWORD=BreastCancer2026
export MYSQL_DB=epca

echo "Waiting for MySQL..."
for i in $(seq 1 60); do
  if mysqladmin ping -h 127.0.0.1 -u root -pBreastCancer2026 --silent 2>/dev/null; then
    echo "MySQL is ready!"
    break
  fi
  echo "Attempt $i/60 - MySQL not ready, waiting..."
  sleep 5
done

exec gunicorn --bind 0.0.0.0:5000 --timeout 120 app:app
