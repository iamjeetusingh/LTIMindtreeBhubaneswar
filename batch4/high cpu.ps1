# list top 10 unique processes with high CPU utilization
<#
cls
Get-Process | `
Select-Object ProcessName, CPU | `
Sort-Object ProcessName -Unique | `
Sort-Object CPU -Descending | `
Select-Object  -First 10
#>

cls
Get-Process | `
Select-Object ProcessName, CPU| `
Sort-Object ProcessName -Unique | `
Sort-Object CPU -Descending | `
Select-Object processname, @{l="CPU(%)"; e={[math]::Round(($_.CPU),2)}}  -First 10