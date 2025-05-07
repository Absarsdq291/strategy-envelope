#!/bin/bash

# Get the base directory of the project
BASE_DIR=$(realpath "$(dirname "$0")")

# Activate virtual environment
source "$BASE_DIR/.venv/bin/activate"

# Set PYTHONPATH to ensure relative imports work
export PYTHONPATH="$BASE_DIR"

# Run the Python script
python3 "$BASE_DIR/strategies/envelopes/multi_bitmart.py"
