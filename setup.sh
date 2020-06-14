#!/bin/bash

# No use in executing, you must source this file

# Checks if the variable PYTHONPATH already exists or not.
if [ -z "$PYTHONPATH" ]; then
  # shellcheck disable=SC2046
  echo "Adding " $(pwd) "to your PYTHONPATH."
  PYTHONPATH=$(pwd)
  export PYTHONPATH
else
  # Checks if the current path is already in the PYTHONPATH variable
  # shellcheck disable=SC2046
  if [ -z "$(echo $PYTHONPATH | grep -o $(pwd))" ]; then
    # shellcheck disable=SC2046
    echo "Adding " $(pwd) "to your PYTHONPATH."
    PYTHONPATH="${PYTHONPATH}:$(pwd)"
    export PYTHONPATH
  fi
fi
