# listing all classes
Get-WmiObject -List | Where-Object {($_.Name -match "^Win32_") -and ($_.Name -like "*logical*")} 

# listing disk size 
Get-WmiObject -Class win32_logicaldisk | Select-Object DeviceID, FreeSpace, Size

# listing disk size using HASHTABLE
Get-WmiObject -Class win32_logicaldisk | Select-Object DeviceID, `
@{l = "FreeSpace(inGBs)"; e = {($_.FreeSpace)}}, `
@{l = "TotalSize(inGBs)"; e = {($_.Size)}}


# listing disk size in GBs
cls
Get-WmiObject -Class win32_logicaldisk | Select-Object DeviceID, `
@{l = "FreeSpace(inGBs)"; e = {[math]::Round(($_.FreeSpace/1GB),2)}}, `
@{l = "TotalSize(inGBs)"; e = {[math]::Round(($_.Size/1GB),2)}}