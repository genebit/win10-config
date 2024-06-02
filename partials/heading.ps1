# Write a heading for the script before it runs the installation commands. 
# Ask the user to start the installation process and wait for the software to be installed.
Write-Host "|-----------------------------------|" -ForegroundColor White
Write-Host "|--------- Win10 Installer ---------|" -ForegroundColor White
Write-Host "|-----------------------------------|" -ForegroundColor White

Write-Host "Press any key to start the installation process..." -ForegroundColor Yellow
[void][System.Console]::ReadKey($true)