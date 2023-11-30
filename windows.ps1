
echo "Installing oh-my-posh..."

$ohMyPoshPackage = 'JanDeDobbeleer.OhMyPosh'
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Host "Error: winget is not available. Please ensure that winget is installed on your system." -ForegroundColor Red
    exit
}

if (-not (winget list $ohMyPoshPackage)) {
    winget install $ohMyPoshPackage -s winget
}

echo "Installing profile..."

$profilePath = $PROFILE.CurrentUserCurrentHost
Copy-Item -Path .\windows\profile.ps1 -Destination $profilePath -Force

echo "Reloading profile..."

. $profilePath

echo "Installing oh-my-posh font..."

oh-my-posh font install --user Meslo

echo "Installing oh-my-posh theme..."

mkdir $env:USERPROFILE\.poshthemes -ErrorAction SilentlyContinue
Copy-Item -Path .\eule.omp.json -Destination $env:USERPROFILE\.poshthemes\ -Force

echo "Installing Windows Terminal settings..."

$windowsTerminalSettingsPath = "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
Copy-Item -Path .\windows\windows-terminal\settings.json -Destination $windowsTerminalSettingsPath -Force
