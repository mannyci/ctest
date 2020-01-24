#!/bin/bash -x
set -e

if [ -z $ENV ]; then
  echo "ERROR: Please provide a runtime environment; GO|CPP"
  exit 1
else
  echo "Running env: $ENV"
  /code/$ENV
fi
exec "$@"
