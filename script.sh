#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USERNAME="$1"

sudo chage -d 2025-01-01 "$USERNAME"
sudo chage -E 2026-12-31 "$USERNAME"
sudo chage -m 7 "$USERNAME"
sudo chage -M 90 "$USERNAME"

sudo chage -l "$USERNAME"
