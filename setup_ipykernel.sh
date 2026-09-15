#!/usr/bin/env bash

set -euo pipefail

if [[ -x /opt/homebrew/bin/python3.13 ]]; then
    PYTHON=/opt/homebrew/bin/python3.13
else
    PYTHON="$(command -v python3)"
fi

echo "Using $PYTHON ($("$PYTHON" --version))"

"$PYTHON" -m venv .venv
.venv/bin/python -m pip install --upgrade pip ipykernel

.venv/bin/python -c 'import ipykernel, sys; print(f"Installed ipykernel {ipykernel.__version__} for {sys.executable}")'

echo "In VS Code, select .venv/bin/python as the notebook kernel."