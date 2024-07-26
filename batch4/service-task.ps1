cls

$ans = Read-Host "Enter the service you want to search: "

$svc = Get-Service -Name $ans 

if($svc.Status -eq "Running"){
    #when service is RUNNING
    Write-Host "$($svc.Name) is $($svc.status)" -ForegroundColor Green
    $a = Read-Host "Do you want to stop the service (Y|N)"
    switch($a){
        "y"{ $svc | Stop-Service -Verbose 
            Write-Host "Current status of $($ans): " $(($svc).status) -ForegroundColor Yellow
        }
        "n"{ Write-Host "Okk, Quitting the console " -ForegroundColor Cyan
             sleep 2 } 
        default{Write-Warning "Invalid selection"}
    }
}else{
    #when service is STOPPED
    Write-Host "$($svc.Name) is $($svc.status)" -ForegroundColor red
    $a = Read-Host "Do you want to START the service (Y|N)"
    switch($a){
        "y"{ $svc | Start-Service -Verbose 
         Write-Host "Current status of $($ans): " $(($svc).status) -ForegroundColor Yellow
         }
        "n"{ Write-Host "Okk, Quitting the console " -ForegroundColor Cyan
             sleep 2 } 
        default{Write-Warning "Invalid selection"}
    }

}