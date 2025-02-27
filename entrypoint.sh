#!/bin/sh
echo "Running Migrations..."
python manage.py makemigrations --noinput
python manage.py migrate --noinput

echo "Starting Gunicorn Server..."
exec gunicorn --bind 0.0.0.0:8000 config.wsgi
