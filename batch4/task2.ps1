cls

$gsv  = Get-Service
$run  = 0
$stop = 0

foreach ($g in $gsv){
    
    if( $g.status -eq "Running" ){
        Write-Host $g.name -ForegroundColor Green
        $run++

    }else{
        
        Write-Host $g.name -ForegroundColor Red
        $g.name | Out-File stoppedsvs.txt -Append
        $stop++
    }

}

#notepad.exe .\stoppedsvs.txt
Write-Host "Total running services are: " $run
Write-Host "Total stopped services are: " $stop


# counting the stopped services from the file
$filesvc = Get-Content .\stoppedsvs.txt
$fc = 0
foreach( $f in $filesvc ){
      $fc++
}
Write-Host "Total entries of stopped services from the file: " $fc
