

echo "PsBuilder - Version 0.1 Beta"
Write-Warning "For testing purposes only."
echo "© 2022 PsBuilder and contributors. All rights reserved."

echo "Use of this application is governed by a BSD license in the BSD3 file."

echo ""
echo "Installing cake. Make sure you have chocolatey installed!"
choco install cake.portable

echo ""
echo "Build started."
$ErrorActionPreference = 'Stop'

Set-Location -LiteralPath $PSScriptRoot







cake .\app.ps1

if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
  echo "Build complete successfully."
else
  Write-Error -Msg "Sorry! Your build failed."



