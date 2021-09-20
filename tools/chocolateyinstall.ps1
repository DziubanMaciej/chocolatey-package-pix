$ErrorActionPreference = 'Stop'

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWJymh'

$packageArgs = @{
  packageName   = 'pix'
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  silentArgs    = '/install /quiet'
  validExitCodes= @(0)
  softwareName  = '*pix*'
  checksum      = 'CA3098327B061077F16311AD016F22761E69A66964A227192D924A7C2BC4B366'
  checksumType  = 'sha256'
}
Install-ChocolateyPackage @packageArgs
