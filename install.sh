#!/bin/bash

set -e

read -rp "This script will rewrite your .bashrc and some other configs, do you really want to continue? (y/N): " confirm
if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
  echo "Cancelled"
  exit 1
fi

if [ "$EUID" -eq 0 ]; then
  echo "Don't execute this script as root!"
  exit 1
fi

TARGET="$HOME"
cp -r dots/* $TARGET

echo "Installed successfully!"
