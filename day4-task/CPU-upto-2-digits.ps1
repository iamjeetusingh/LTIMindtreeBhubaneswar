<#

cls
Get-Process | `
Sort-Object ProcessName -Unique | `
Sort-Object cpu -Descending | `
Select-Object Processname, CPU -First 10

#>

cls
Get-Process | `
Sort-Object ProcessName -Unique | `
Sort-Object cpu -Descending | `
Select-Object Processname, `
@{l="CPU (in %)"; e={[math]::Round(($_.CPU),2)}} `
-First 10