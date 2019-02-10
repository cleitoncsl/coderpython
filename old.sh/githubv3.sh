#!/bin/bash -e

git pull 2>/dev/null

RESULT=$?

if [ $RESULT -eq 0 ]; then
  echo success
else
  echo failed
fi