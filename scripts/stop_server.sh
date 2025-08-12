#!/bin/bash

echo "Stopping node server..."
pkill -f "node server.js" || true
