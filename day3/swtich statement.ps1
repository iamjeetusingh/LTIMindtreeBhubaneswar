# switch statement
cls

$color = Read-Host "enter you fav color"

switch ($color){
    
    "red"{ Write-Host "its red" }
    "blue"{ Write-Host "its blue" }
    "green"{ Write-Host "its green" }
    default { Write-Host "its default" }


}