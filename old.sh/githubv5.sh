#!/bin/bash -e

git pull 2>&-

RESULT=$?

if [ $RESULT -eq 0 ]; then
  echo success
else
  echo""
  echo""
  echo "erro ao efetuar login no github"
  date
fi
