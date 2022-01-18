

echo "PsBuilder - Version 1.0 Release Candidate"

echo "© 2022 PsBuilder and contributors. All rights reserved."

echo "Use of this application is governed by a BSD license in the BSD3 file."

echo ""
echo "Installing cake. Make sure you have chocolatey installed!"
choco install cake.portable

echo ""
echo "Build started."
$ErrorActionPreference = 'Stop'

Set-Location -LiteralPath $PSScriptRoot

$env:DOTNET_SKIP_FIRST_TIME_EXPERIENCE = '1'

$env:DOTNET_CLI_TELEMETRY_OPTOUT = '1'

$env:DOTNET_NOLOGO = '1'

dotnet tool restore

if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

dotnet cake @args

if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
  echo "Build complete successfully."
else
  Write-Error -Msg "Sorry! Your build failed."



