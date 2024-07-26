# switch case
cls
$ans = Read-Host "Select option from the below list:
    1. Check IP address
    2. Check Internet connection
    3. List username & Hostname
    4. Exit
   "

switch ( $ans ){

    1{ Get-NetIPAddress | Format-Table }
    2{ 
        if(Test-Connection google.com -Count 1 -ErrorAction SilentlyContinue){
            Write-Host "Internet is active" -ForegroundColor Green
        }else{
            Write-Host "Internet is inactive" -ForegroundColor Red
        }
     }
    3{
        Write-Host "Username is: " $env:USERNAME
        Write-Host "Hostname is: " $(hostname)
    }
    4{
        Write-Host "Seriously!!!" -ForegroundColor Cyan
        sleep 2
        break       
    }
    default{
        Write-Warning "Invalid Selection"
    }

}