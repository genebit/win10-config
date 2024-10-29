<#
.SYNOPSIS
This script installs various software applications using the Windows Package Manager (winget).

.DESCRIPTION
The script installs the following software applications:
- Web Browsers: Brave, Mozilla Firefox, Google Chrome
- Media Players: VideoLAN VLC
- Streaming Software: OBS Studio, Discord
- System Software: WizTree, CPU-Z, qBittorrent, AOMEI Partition Assistant, 7zip
- Gaming Platforms: Valve Steam, Epic Games Launcher
- Music Streaming: Spotify
- Graphic Design Software: KDE Krita, Figma
- Development Software: Git, GitHub Desktop, Docker, Postman, DBeaver

.PARAMETER None
This script does not accept any parameters.

.EXAMPLE
.\install.ps1
Runs the script to install the specified software applications.

#>

./partials/heading.ps1

Write-Host "Installing software applications using Windows Package Manager (winget)..." -ForegroundColor Yellow
Write-Host "Please wait while the software is being installed..." -ForegroundColor Yellow

function Install-Software {
    param (
        [string]$SoftwareName,
        [string]$WingetId
    )
    Write-Host "Installing $SoftwareName..." -ForegroundColor Yellow
    winget install -e --id $WingetId
    if ($?) {
        Write-Host "$SoftwareName installed successfully." -ForegroundColor Green
    } else {
        Write-Host "Error installing $SoftwareName." -ForegroundColor Red
    }
}

Write-Host "Installing Web Browsers..." -ForegroundColor Yellow
# Web Browsers
Install-Software -SoftwareName "Brave Browser" -WingetId "Brave.Brave"
Install-Software -SoftwareName "Mozilla Firefox" -WingetId "Mozilla.Firefox"
Install-Software -SoftwareName "Google Chrome" -WingetId "Google.Chrome"

Write-Host "Installing Media Players..." -ForegroundColor Yellow
# Media Players
Install-Software -SoftwareName "VLC Media Player" -WingetId "VideoLAN.VLC"

Write-Host "Installing Streaming Software..." -ForegroundColor Yellow
# Streaming Software
Install-Software -SoftwareName "OBS Studio" -WingetId "OBSProject.OBSStudio"
Install-Software -SoftwareName "Discord" -WingetId "Discord.Discord"

Write-Host "Installing System Software..." -ForegroundColor Yellow
# System Software
Install-Software -SoftwareName "WizTree" -WingetId "AntibodySoftware.WizTree"
Install-Software -SoftwareName "CPU-Z" -WingetId "CPUID.CPU-Z"
Install-Software -SoftwareName "qBittorrent" -WingetId "qBittorrent.qBittorrent"
Install-Software -SoftwareName "7zip" -WingetId "mcmilk.7zip-zstd"

Write-Host "Installing Disk Partition Manager..." -ForegroundColor Yellow
# Disk Partition Manager
Install-Software -SoftwareName "AOMEI Partition Assistant" -WingetId "AOMEI.PartitionAssistant"

Write-Host "Installing Gaming Platforms..." -ForegroundColor Yellow
# Gaming Platforms
Install-Software -SoftwareName "Valve Steam" -WingetId "Valve.Steam"
Install-Software -SoftwareName "Epic Games Launcher" -WingetId "EpicGames.EpicGamesLauncher"

Write-Host "Installing Music Streaming..." -ForegroundColor Yellow
# Music Streaming
Install-Software -SoftwareName "Spotify" -WingetId "Spotify.Spotify"

Write-Host "Installing Graphic Design Software..." -ForegroundColor Yellow
# Graphic Design Software
Install-Software -SoftwareName "KDE Krita" -WingetId "KDE.Krita"
Install-Software -SoftwareName "Figma" -WingetId "Figma.Figma"

Write-Host "Installing Version Control Software..." -ForegroundColor Yellow
# Development Software
Install-Software -SoftwareName "Git" -WingetId "Git.Git"
Install-Software -SoftwareName "GitHub Desktop" -WingetId "GitHub.GitHubDesktop"
Install-Software -SoftwareName "Docker" -WingetId "Docker.DockerDesktop"
Install-Software -SoftwareName "DBeaver" -WingetId "dbeaver.dbeaver"
Install-Software -SoftwareName "Postman" -WingetId "Postman.Postman"

Write-Host "Software installation completed." -ForegroundColor Green

./partials/endnotes.ps1
