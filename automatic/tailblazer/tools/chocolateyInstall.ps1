$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$desktopPath = [Environment]::GetFolderPath("Desktop")
$lnkPath = $desktopPath + "\TailBlazer.lnk"
$exePath = $unzipLocation + "\" + $packageName + ".exe"

Write-Host "Uninstalling previous version"
Remove-Item $unzipLocation -Force -Recurse -Exclude $unzipLocation\logs,TailBlazer.exe.gui -ErrorAction SilentlyContinue
Write-Host "Done"

Install-ChocolateyZipPackage $packageName $url $unzipLocation
Install-ChocolateyShortcut -shortcutFilePath $lnkPath -targetPath $exePath
