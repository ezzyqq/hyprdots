#!/bin/bash

if [ "$EUID" -eq 0 ]; then
  echo "Executed as root!"
  exit 1
fi

echo "test"
