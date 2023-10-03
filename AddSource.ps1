$OPath = Get-Location
$ConfigFile = "$($OPath)\configuration.xml"
$InstallPath = "<Add OfficeClientEdition=`"64`" Channel=`"PerpetualVL2021`" SourcePath=`"$OPath`"`>"
(Get-Content $ConfigFile) -replace '<Add.*', $InstallPath | Set-Content $ConfigFile
$RunSetup = "$($OPath)\setup.exe"
& $RunSetup /configure $ConfigFile
