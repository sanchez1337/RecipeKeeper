#!/bin/sh

set -e

if [ "$MODE" = "production" ]; then
  echo "Running in production mode..."
  npm run build
  npm start # Assuming you have a server like serve or a similar static file server
else
  echo "Running in development mode..."
  npm run dev -- --host
fi
