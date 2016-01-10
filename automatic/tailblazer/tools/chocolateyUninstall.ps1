$desktopPath = [Environment]::GetFolderPath("Desktop")
$lnkPath = $desktopPath + "\{{PackageName}}.lnk"

If (Test-Path $lnkPath)
{  
	Remove-Item $lnkPath
}