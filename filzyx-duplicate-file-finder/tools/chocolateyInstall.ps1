$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = '$env:ChocolateyPackageName'
  fileType       = 'exe'
  url            = 'https://filzyx.com/download/DuplicateFileFinder-Setup-0.6.1.exe'
  checksum       = '540908A9B6B4AFA235954F960C20186570555C2EAF65626EF79BC388900BF403'
  checksumType   = 'sha256'
  softwareName   = 'Duplicate File Finder*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
