cd $env:USERPROFILE\Downloads


$latestVersion = 1.0
$url = "https://github.com/psbuilder/psbuilder/releases/download/$latestVersion/PsBuilder.init.ps1"
Invoke-WebRequest $url
