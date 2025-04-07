#!/bin/bash

# Start your codespaces - empty by GitHub
sudo apt-get update
sudo apt-get install -y dos2unix

# Use Node.js version 20 and set it as default
nvm use 20
nvm alias default 20

# Install Flowise globally
npm install -g flowise@2.2.3

# Convert the Flowise run script to Unix format
# run npm root -g to finde correct run location
dos2unix /usr/local/share/nvm/versions/node/v20.19.0/lib/node_modules/flowise/bin/run

# Start Flowise
npx flowise start
