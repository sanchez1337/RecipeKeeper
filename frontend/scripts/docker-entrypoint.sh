#!/bin/sh

set -e

cd /app

# First check if the first argument passed in looks like a flag (-f, --flag, etc.)
# or if no arguments are passed in.
if [ "${1#-}" != "$1" ] || [ -z "$1" ]; then
  if [ "$DEPLOYMENT_MODE" = "production" ]; then
    echo "Running in production mode..."
    npm install
    npm run build
  elif [ "$DEPLOYMENT_MODE" = "development" ]; then
    echo "Running in development mode..."
    npm install
    npm run dev -- --host
  else
    echo "No deployment mode specified or mode is not supported. Exiting."
    exit 1
  fi
else
  # If it looks like the first argument is not a flag
  # and not empty, assume it's a command to execute
  exec "$@"
fi