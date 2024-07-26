function get-ipaddr{
    Get-NetIPAddress | Format-Table
}
function get-netconnection{
        if(Test-Connection google.com -Count 1 -ErrorAction SilentlyContinue){
            Write-Host "Internet is active" -ForegroundColor Green
        }else{
            Write-Host "Internet is inactive" -ForegroundColor Red
        }
}
function get-userinfo{
        Write-Host "Username is: " $env:USERNAME
        Write-Host "Hostname is: " $(hostname)
}
function get-lost{
    Write-Host "Seriously!!!" -ForegroundColor Cyan
        sleep 2
        break 
}

# switch case
cls
$ans = Read-Host "Select option from the below list:
    1. Check IP address
    2. Check Internet connection
    3. List username & Hostname
    4. Exit
   "

switch ( $ans ){
    1{ get-ipaddr }
    2{ get-netconnection }
    3{ get-userinfo }
    4{ get-lost }
    default{
        Write-Warning "Invalid Selection"
    }

}
