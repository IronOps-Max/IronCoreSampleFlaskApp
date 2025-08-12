#!/bin/bash

cd /home/ubuntu/hello-nodejs-app || exit 1

echo "Stopping existing node processes..."
pkill -f "node server.js" || true

echo "Starting node server..."
nohup npm start > /home/ubuntu/server.log 2>&1 &
