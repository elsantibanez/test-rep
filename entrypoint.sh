#!/bin/bash

# Ensure the script fails on any error
set -e

#git hub user info
git config --global user.name "${github_actor}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace # This is to avoid the error: "error: refusing to lose untracked file at 'xxx'"

#Run python
python3 /app/travel_time_calculator.py

# Set up any environment variables if needed
# export PYTHONPATH=/app

# Run the Python script
python /app/travel_time_calculator.py