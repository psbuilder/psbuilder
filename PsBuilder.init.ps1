
# psbuilder logo
echo "╔═══╗──╔══╗────╔╗──╔╗"

echo "║╔═╗║──║╔╗║────║║──║║"

echo "║╚═╝╠══╣╚╝╚╦╗╔╦╣║╔═╝╠══╦═╗"

echo "║╔══╣══╣╔═╗║║║╠╣║║╔╗║║═╣╔╝"

echo "║║──╠══║╚═╝║╚╝║║╚╣╚╝║║═╣║"

echo "╚╝──╚══╩═══╩══╩╩═╩══╩══╩╝"
echo "            https://psbuilder.github.io"
echo "Version 1.1.0 Beta"
echo "© 2022 PsBuilder and contributors. All rights reserved."
echo "Contains script modules in order to function properly!"
echo "Use of this application is governed by a BSD license in the LICENSE file."
echo "You are using PsBuilder on $env:os."
# "PsBuilder" would be confused with "PSBuilder", the name of the module

echo "Installing module"
Install-Module -Name PSBuilder -Force

echo "installing the official powershell lint tool from microsoft"
Install-Module -Name PSScriptAnalyzer -Force

$global:DIR = cd
echo "Lint started!"
Invoke-ScriptAnalyzer -Path $global:DIR
echo ""
echo "Finished lint. Build started!"

Invoke-Builder -Path $global:DIR


trap {
  $global:exitcode = $LASTEXICODE
  Write-Error "An error occured. The build failed with exit code $global:exitcode. Please manually clean anything up that was not finished. For more info on how to solve this, visit https://psbuildergithub.io/docs."
  exit $exitcode
}




