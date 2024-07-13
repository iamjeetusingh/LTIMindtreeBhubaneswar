Get-WmiObject -List
Get-WmiObject -List | Measure-Object
Get-WmiObject -List | Where-Object {$_.name -match "^Win32_"}
Get-WmiObject -List | Where-Object {($_.name -match "^Win32_") -and ($_.name -like "*bios*")}
Get-WmiObject -List | Where-Object {$_.name -match "^Win32_"} | measure

Get-WmiObject -Class win32_bios
Get-WmiObject -Class win32_computersystem
Get-WmiObject -Class win32_operatingsystem
Get-WmiObject -Class win32_logicaldisk | ft