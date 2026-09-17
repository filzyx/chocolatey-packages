$ErrorActionPreference = 'Stop'

$softwareName = 'Duplicate File Finder*'
[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName

if ($key.Count -eq 1) {
  $key | ForEach-Object {
    $file = $_.UninstallString
    $silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    Uninstall-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType exe -SilentArgs $silentArgs -File $file
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "$softwareName has already been uninstalled by other means."
} else {
  Write-Warning "$($key.Count) matches found for $softwareName - aborting to avoid uninstalling the wrong software."
  $key | ForEach-Object { Write-Warning "- $($_.DisplayName)" }
}
