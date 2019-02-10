#!/bin/bash -e

git pull 2>&1&> /dev/null

RESULT=$?

if [ $RESULT -eq 0 ]; then
  echo success
else
  sleep 5
  echo "erro ao efetuar login no github"
fi
