<#
Task
-----
    Ask user to enter a website name & check if the site is pingable or not.
    if site is pinging display it in GREEN color
    else display it in RED color.
#>

cls

$web = Read-Host "Enter website to check"

if( Test-Connection $web -Count 1 -ErrorAction SilentlyContinue ){
    Write-Host "$($web) is pinging" -ForegroundColor Green
}else{
    Write-Warning "$($web) is NOT pinging"
}