$Now = Get-Date

Start-Job -Name 'C' -ScriptBlock {

  Get-ChildItem -Path 'C:\' -Recurse | Set-Content -Path '.\outtext.txt' } 

Try

{

    Do

    {

        If ((Get-Date).AddMinutes(-2) -gt $Now)

        {

            Stop-Job -Name 'C'

            Write-Error "Build took more than two minutes. Exiting."
            Exit 124
        }

    } While ((Get-Job -Name 'C').State -eq 'Running')

    $Output = Receive-Job -Name 'C'

}

Catch

{

    $_

}
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
Install-Module -Name PSBuilder -Force

echo ""
echo "Build started!"
Invoke-Builder

   




