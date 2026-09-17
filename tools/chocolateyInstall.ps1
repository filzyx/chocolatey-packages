$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = '$env:ChocolateyPackageName'
  fileType       = 'exe'
  url            = 'https://filzyx.com/download/DuplicateFileFinder-Setup.exe'
  checksum       = '3A36749C99D31AF316A3DAA0A202B29DA619E932B0D0FC3B5E4A51C746918957'
  checksumType   = 'sha256'
  softwareName   = 'Duplicate File Finder*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
