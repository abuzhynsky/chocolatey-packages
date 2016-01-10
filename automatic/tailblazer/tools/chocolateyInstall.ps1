$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$desktopPath = [Environment]::GetFolderPath("Desktop")
$lnkPath = $desktopPath + "\TailBlazer.lnk"
$exePath = $unzipLocation + "\" + $packageName + ".exe"

Install-ChocolateyZipPackage $packageName $url $unzipLocation
Install-ChocolateyShortcut -shortcutFilePath $lnkPath -targetPath $exePath
