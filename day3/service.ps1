cls

$sname = Read-Host "Enter the service name you wanna check!!!"

$s = Get-Service -Name $sname

Write-Host "$($s.name) is $($s.status)" -ForegroundColor Red -BackgroundColor Black

Write-Warning "$($s.name) is $($s.status)"