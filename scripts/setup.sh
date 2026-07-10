#!/bin/bash
# Setup script for the Angular project

# Exit on any error
set -e

# ASCII Art Banner
cat << "EOF"
 __      __               __    _      _
 \ \    / /              / _|  / \    | |
  \ \  / /__  ___  ___  | |_  / _ \   | |___
   \ \/ / _ \/ _ \/ _ \ |  _|/ ___ \  | / __|
    \  / (_) | (_) | (_) || | / /___\ \ | \__ \
     \/ \___/ \___/ \___/ |_|/_/     \_\|_|___/

EOF

echo "============================================="
echo "       WoofAds Environment Setup            "
echo "============================================="
echo ""
read -p "Press [Enter] to begin installation..."

echo "Checking prerequisites..."

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ npm could not be found."
    echo "Please install Node.js and npm first from https://nodejs.org/"
    exit 1
fi

echo "✅ npm is installed."
echo ""
echo "Installing project dependencies..."
npm install

echo ""
echo "Installing Angular CLI globally (might require sudo on some systems)..."
npm install -g @angular/cli

echo ""
echo "============================================="
echo "✅ Setup complete!"
echo "You can now run the project using:"
echo "   npm run start"
echo "or"
echo "   ng serve"
echo "============================================="
