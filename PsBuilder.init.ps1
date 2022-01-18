

echo "PsBuilder - Version 0.1 Beta"
Write-Warning "For testing purposes only."
echo "© 2022 PsBuilder and contributors. All rights reserved."
echo "Contains script modules in order to function properly!"
echo "Use of this application is governed by a BSD license in the BSD3 file."

Install-Module -Name ps2exe

echo ""
echo "Build started."
Invoke-ps2exe ".\PSApp.ps1" ".\WinApp.exe" -noConsole








