$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RW1e7km'

$packageArgs = @{
  packageName   = 'pix'
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  silentArgs    = '/install /quiet'
  validExitCodes= @(0)
  softwareName  = '*pix*'
  checksum      = 'CD44C578E898340F033C3A88D5D67531BF1FBB3CD647FA5F5BE1D5496388B55B'
  checksumType  = 'sha256'
}
Install-ChocolateyPackage @packageArgs
