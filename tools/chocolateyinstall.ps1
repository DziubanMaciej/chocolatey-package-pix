$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWFWkd'

$packageArgs = @{
  packageName   = 'pix'
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  silentArgs    = '/install /quiet'
  validExitCodes= @(0)
  softwareName  = '*pix*'
  checksum      = '7205D3ECD5692BC53A5515F35E7E2D564E6E62901FC37BC5D067C0A2B902C3D3'
  checksumType  = 'sha256'
}
Install-ChocolateyPackage @packageArgs
