#!/bin/sh

echo "Starting docker entrypoint"

if [ "$NODE_ENV" = "development" ]; then
  echo "Running on development mode"
  npm install
fi
  npm run db:import

echo "Finished docker entrypoint"
exec "$@"