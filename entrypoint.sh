#!/bin/bash

# Ensure the script fails on any error
set -e

# GitHub user info
git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace # This is to avoid the error: "error: refusing to lose untracked file at 'xxx'"

# Set up any environment variables if needed
# export PYTHONPATH=/app

# Run the Python script
python3 /usr/bin/travel_calculator.py
