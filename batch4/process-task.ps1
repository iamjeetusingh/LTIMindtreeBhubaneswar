# SELECT ANY 1 DUPLICATE PROCESS FROM YOU SYSTEM & DISPLAY THE TOTAL COUNT OF THAT PROCESS.

# method 1
cls
$process = Get-Process | Where-Object {$_.Name -eq "svchost"}
$counter = 0
foreach( $p in $process ){
    $counter++
}
write-host "total svchost processes are: " $counter

# method 2
cls
$proc = Get-Process -Name svchost
write-host "total svchost processes are: " $proc.Count