#!/bin/bash
# Setup script for the Angular project

# Exit on any error
set -e

echo "Starting setup..."

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "npm could not be found. Please install Node.js and npm first."
    exit 1
fi

echo "Installing npm dependencies..."
npm install

echo "Installing Angular CLI globally..."
npm install -g @angular/cli

echo "Setup complete! You can now run the project using 'ng serve' or 'npm run start'."
