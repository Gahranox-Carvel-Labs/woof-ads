<#
.SYNOPSIS
Setup script for the Angular project on Windows.

.DESCRIPTION
This script checks for npm, installs dependencies, and installs the Angular CLI globally.
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
Write-Host "       WoofAds Environment Setup            " -ForegroundColor Green
Write-Host "=============================================" -ForegroundColor Green
Write-Host ""

Read-Host "Press [Enter] to begin installation..."

Write-Host "Checking prerequisites..." -ForegroundColor Yellow

# Check if npm is installed
if (-not (Get-Command npm -ErrorAction SilentlyContinue)) {
    Write-Host "❌ npm could not be found." -ForegroundColor Red
    Write-Host "Please install Node.js and npm first from https://nodejs.org/" -ForegroundColor Red
    exit 1
}

Write-Host "✅ npm is installed." -ForegroundColor Green
Write-Host ""
Write-Host "Installing npm dependencies..." -ForegroundColor Yellow
npm install

Write-Host ""
Write-Host "Installing Angular CLI globally..." -ForegroundColor Yellow
npm install -g @angular/cli

Write-Host ""
Write-Host "=============================================" -ForegroundColor Green
Write-Host "✅ Setup complete!" -ForegroundColor Green
Write-Host "You can now run the project using:" -ForegroundColor Cyan
Write-Host "   npm run start" -ForegroundColor Cyan
Write-Host "or" -ForegroundColor Cyan
Write-Host "   ng serve" -ForegroundColor Cyan
Write-Host "=============================================" -ForegroundColor Green
