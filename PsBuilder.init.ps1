# psbuilder logo
echo "╔═══╗──╔══╗────╔╗──╔╗      TM"

echo "║╔═╗║──║╔╗║────║║──║║"

echo "║╚═╝╠══╣╚╝╚╦╗╔╦╣║╔═╝╠══╦═╗"

echo "║╔══╣══╣╔═╗║║║╠╣║║╔╗║║═╣╔╝"

echo "║║──╠══║╚═╝║╚╝║║╚╣╚╝║║═╣║"

echo "╚╝──╚══╩═══╩══╩╩═╩══╩══╩╝"
echo "Version 1.1.0 Beta"
echo "© 2022 PsBuilder and contributors. All rights reserved."
echo "Contains script modules in order to function properly!"
echo "Use of this application is governed by a BSD license in the LICENSE file."
Write-Debug "PsBuilder is running on $Env:OS."
# "PsBuilder" would be confused with "PSBuilder", the name of the module
Install-Module -Name PSBuilder -Force
Write-Debug "Installed PsBuilder required module. Starting build."
echo ""
echo "Build started!"
Invoke-Builder
Write-Debug "Everything done"
   




