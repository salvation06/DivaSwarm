# Simplified Release Script
param([string]$Version)
if (-not $Version) { $Version = "v7.3.0" }
Write-Output "Tagging $Version"
git tag -a $Version -m "Release $Version"
git push origin $Version
Write-Output "Done"
