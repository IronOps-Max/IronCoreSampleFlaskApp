#!/bin/bash
set -e
cd /home/ubuntu/flask-app
# ensure pip3 is available
if ! command -v pip3 >/dev/null 2>&1; then
  echo "pip3 not found, please ensure Python3 & pip3 are installed"
  exit 1
fi
pip3 install -r requirements.txt
