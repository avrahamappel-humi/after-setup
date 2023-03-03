#!/bin/bash
#
# Setup for Laravel projects

echo "Creating Psalm config file"

psalm --init

echo "psalm.xml" >> .git/info/exclude
