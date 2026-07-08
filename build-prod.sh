#!/bin/bash
# Build script for production deployment

set -e

echo "Building Angular app for production..."
npm run build:prod

echo "Build complete. Output is in dist/woof-ads/browser/"
