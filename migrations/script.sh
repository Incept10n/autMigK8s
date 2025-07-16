#!/bin/sh
sleep 5
echo "Running migrations..."
alembic revision --autogenerate
alembic upgrade head
