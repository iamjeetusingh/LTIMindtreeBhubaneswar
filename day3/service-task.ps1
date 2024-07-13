<#
Task
------------------------------------------
- ask user to enter the service name & display the status of the service.

- if service is running, ask user to stop the service or exit the console.

- if service is stopped, ask user to run the service or exit the console.
#>
cls
# enter service name
$sname = Read-Host "Enter service name: "

$svc = Get-Service -Name $sname

if ($svc.Status -eq "Running"){
    Write-Host "$($svc.name) is RUNNING" -ForegroundColor Green
        $ans = Read-Host "Do you want to stop the service? (Y/N)"
        if( $ans -eq "y" ){
            Stop-Service -Name $sname -Verbose
        }elseif( $ans -eq "n"  ){
            Write-Host "exiting the console" -ForegroundColor Cyan
        }else{
            Write-Warning "Invalid selection"
        }
}else{
    Write-Host "$($svc.name) is STOPPED" -ForegroundColor Red
        $ans = Read-Host "Do you want to START the service? (Y/N)"
        if( $ans -eq "y" ){
            Start-Service -Name $sname -Verbose
        }elseif( $ans -eq "n"  ){
            Write-Host "exiting the console" -ForegroundColor Cyan
        }else{
            Write-Warning "Invalid selection"
        }
}