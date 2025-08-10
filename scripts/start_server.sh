#!/bin/bash
set -e
cd /home/ec2-user/flask-app
# kill previous process (if any)
pkill -f "python3 app.py" || true
# start app in background and redirect logs
nohup python3 app.py > app.log 2>&1 &
