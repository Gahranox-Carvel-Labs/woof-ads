<#
.SYNOPSIS
Setup script for the Angular project on Windows.

.DESCRIPTION
This script checks for npm, installs dependencies, and installs the Angular CLI globally.
#>

$ErrorActionPreference = "Stop"

Write-Host "Starting setup..." -ForegroundColor Cyan

# Check if npm is installed
if (-not (Get-Command npm -ErrorAction SilentlyContinue)) {
    Write-Host "npm could not be found. Please install Node.js and npm first from https://nodejs.org/" -ForegroundColor Red
    exit 1
}

Write-Host "Installing npm dependencies..." -ForegroundColor Yellow
npm install

Write-Host "Installing Angular CLI globally..." -ForegroundColor Yellow
npm install -g @angular/cli

Write-Host "Setup complete! You can now run the project using 'ng serve' or 'npm run start'." -ForegroundColor Green
