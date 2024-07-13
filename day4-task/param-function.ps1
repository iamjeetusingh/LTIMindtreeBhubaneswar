# basic functions
function Get-AddNums(){
param(
    [int]$batman,
    [int]$bane
)

   $dc = $batman + $bane

   Write-Host "Total of $batman & $bane is $dc"
}

cls
Get-AddNums 99 22
Get-AddNums -batman 33 -bane 55
Get-AddNums -bane 81 -batman 12
