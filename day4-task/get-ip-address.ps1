Get-NetIPAddress

Get-NetIPAddress | Format-Table

Get-NetIPAddress | Where-Object {$_.ifIndex -eq 11} | ft

Get-NetIPAddress | Where-Object {($_.ifIndex -eq 11) -and ($_.PrefixOrigin -eq "Dhcp")} 

Get-NetIPAddress | Where-Object {($_.ifIndex -eq 11) -and ($_.PrefixOrigin -eq "Dhcp")} | Select-Object IPAddress

(Get-NetIPAddress | Where-Object {($_.ifIndex -eq 11) -and ($_.PrefixOrigin -eq "Dhcp")}).IPAddress