

echo "PsBuilder - Version 1.0 Stable"
echo "© 2022 PsBuilder and contributors. All rights reserved."
echo "Contains script modules in order to function properly!"
echo "Use of this application is governed by a BSD license in the BSD3 file."

try

{

    while($true)

    {

        

    

      Install-Module -Name PSBuilder -Force

      echo ""
      echo "Build started."
      Invoke-Builder
      exit $LASTEXITCODE
   }
}

finally

{
  Write-Error "Exiting PsBuilder abnormally. Please manually clean anything up that was not finished!"
}







