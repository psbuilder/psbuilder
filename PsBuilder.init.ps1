

echo "PsBuilder - Version 1.0 Stable"
echo "© 2022 PsBuilder and contributors. All rights reserved."
echo "Contains script modules in order to function properly!"
echo "Use of this application is governed by a BSD license in the BSD3 file."
# "PsBuilder" would be confused with "PSBuilder", the name of the module
Install-Module -Name PSBuilder -Force

echo ""
echo "Build started."
Invoke-Builder

   




[Console]::TreatControlCAsInput = $true # at beginning of script

    if ([Console]::KeyAvailable){

        $readkey = [Console]::ReadKey($true)

        if ($readkey.Modifiers -eq "Control" -and $readkey.Key -eq "C"){                

            


        

    
           Write-Error "You have been caught stopping the build process by pressing Control + C. Please clean anything up that PsBuilder did not finish."
           Exit 15
       }
}






