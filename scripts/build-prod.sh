#!/bin/bash
# Build script for production deployment

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
echo "       WoofAds Production Build             "
echo "============================================="
echo ""
read -p "Press [Enter] to start the production build..."

echo "Building Angular app for production with base-href /woof-ads/..."
npm run build:prod

echo ""
echo "============================================="
echo "✅ Build complete!"
echo "Output is located in: dist/woof-ads/browser/"
echo "============================================="
