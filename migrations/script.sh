#!/bin/sh

echo "changing url to one which in the env var"
DB_URL="$DB_URL"

sed -E -i "s|^sqlalchemy.url = .*|sqlalchemy.url = $DB_URL|" alembic.ini


echo "Running migrations..."
alembic revision --autogenerate
alembic upgrade head