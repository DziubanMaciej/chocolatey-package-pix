$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://download.microsoft.com/download/9dd61174-c7bb-4cb2-8e69-17f4df02a190/PIX-2601.15-Installer-x64.exe'

$packageArgs = @{
  packageName   = 'pix'
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  silentArgs    = '/install /quiet'
  validExitCodes= @(0)
  softwareName  = '*pix*'
  checksum      = 'DFA07BBDF3B6E8EE651A1032A885850E5632CE313695770C13950B12BFE68CB7'
  checksumType  = 'sha256'
}
Install-ChocolateyPackage @packageArgs
