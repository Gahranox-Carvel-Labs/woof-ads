<#
.SYNOPSIS
Build script for production deployment on Windows.

.DESCRIPTION
This script executes the npm production build script configured for GitHub Pages.
#>

$ErrorActionPreference = "Stop"

Clear-Host
Write-Host " __      __               __    _      _      " -ForegroundColor Cyan
Write-Host " \ \    / /              / _|  / \    | |     " -ForegroundColor Cyan
Write-Host "  \ \  / /__  ___  ___  | |_  / _ \   | |___  " -ForegroundColor Cyan
Write-Host "   \ \/ / _ \/ _ \/ _ \ |  _|/ ___ \  | / __| " -ForegroundColor Cyan
Write-Host "    \  / (_) | (_) | (_) || | / /___\ \ | \__ \ " -ForegroundColor Cyan
Write-Host "     \/ \___/ \___/ \___/ |_|/_/     \_\|_|___/ " -ForegroundColor Cyan
Write-Host "                                              " -ForegroundColor Cyan
Write-Host "=============================================" -ForegroundColor Green
Write-Host "       WoofAds Production Build             " -ForegroundColor Green
Write-Host "=============================================" -ForegroundColor Green
Write-Host ""

Read-Host "Press [Enter] to start the production build..."

Write-Host "Building Angular app for production with base-href /woof-ads/..." -ForegroundColor Yellow
npm run build:prod

Write-Host ""
Write-Host "=============================================" -ForegroundColor Green
Write-Host "✅ Build complete!" -ForegroundColor Green
Write-Host "Output is located in: dist/woof-ads/browser/" -ForegroundColor Cyan
Write-Host "=============================================" -ForegroundColor Green
