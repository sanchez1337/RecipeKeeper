#!/bin/sh

set -e

# First check if the first argument passed in looks like a flag (-f, --flag, etc.)
# or if no arguments are passed in.
if [ "${1#-}" != "$1" ] || [ -z "$1" ]; then
  if [ "$DEPLOYMENT_MODE" = "production" ]; then
    echo "Running in production mode..."
    python manage.py wait_for_db
    python manage.py collectstatic --noinput
    python manage.py migrate

    uwsgi --socket :9000 --workers 4 --master --enable-threads --module app.wsgi
  elif [ "$DEPLOYMENT_MODE" = "development" ]; then
    echo "Running in development mode..."
    python manage.py wait_for_db
    python manage.py migrate
    python manage.py runserver 0.0.0.0:8000
  else
    echo "No deployment mode specified or mode is not supported. Exiting."
    exit 1
  fi
else
  # If it looks like the first argument is not a flag
  # and not empty, assume it's a command to execute
  exec "$@"
fi
