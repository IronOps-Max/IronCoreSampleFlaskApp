#!/bin/bash
set -e

echo "Updating apt..."
sudo apt-get update -y

echo "Installing Node.js and npm..."
sudo apt-get install -y nodejs npm

echo "Checking Node.js version..."
node -v
npm -v

echo "Installing app dependencies..."
cd /home/ubuntu/nodejs-hello
npm install
