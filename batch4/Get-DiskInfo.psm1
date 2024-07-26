function  Get-DiskInfo{
cls
    Get-WmiObject -Class win32_logicaldisk | Select-Object DeviceID, `
    @{l = "FreeSpace(inGBs)"; e = {[math]::Round(($_.FreeSpace/1GB),2)}}, `
    @{l = "TotalSize(inGBs)"; e = {[math]::Round(($_.Size/1GB),2)}}
}