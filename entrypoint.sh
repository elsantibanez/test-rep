#!/bin/bash

# Ensure the script fails on any error
set -e

# GitHub user info
git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

# Print environment variables for debugging
echo "GITHUB_ACTOR: ${GITHUB_ACTOR}"
echo "INPUT_EMAIL: ${INPUT_EMAIL}"

# Run the Python script
python3 /app/travel_calculator.py

# Execute any additional commands passed to the container
exec "$@"
