cls

$ans = Read-Host "
   Select an option from the following:
    1. Display the IP address
    2. Ping google.com
    3. Open notepad.exe
    4. Exit
"
switch ($ans) {

1{ 
    $ip = (Get-NetIPAddress | Where-Object {($_.ifIndex -eq 11) -and ($_.PrefixOrigin -eq "Dhcp")}).IPAddress 
    Write-Host "Your IP address is : " -NoNewline
    Write-Host  $ip -ForegroundColor Yellow
}
2{ 
    if(Test-Connection google.com -Count 2 -ErrorAction SilentlyContinue){
        Write-Host "Google is pingable" -ForegroundColor Green
    }else{
        Write-Host "Google is NOT pingable" -ForegroundColor Red
    }
 }
3{ 
    Start-Process notepad.exe 
    
 }
4{ exit }
default{ Write-Warning "Invalid Selection" }

}