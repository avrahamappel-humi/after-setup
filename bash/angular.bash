#!/bin/bash
#
# Setup for Angular projects

echo "Installing ngserver"

npm ci
npm install --no-save @angular/language-server
