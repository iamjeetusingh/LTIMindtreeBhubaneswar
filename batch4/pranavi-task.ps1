# to ping the websites and get the IP/website names from a text file.

# notepad.exe E:\PowerShell\batch4\websites.txt

cls

$mysites = Get-Content E:\PowerShell\batch4\websites.txt

foreach( $m in $mysites ){
    
    Test-Connection $m -Count 1 -ErrorAction SilentlyContinue | `
    Select-Object Address, IPV4Address | `
    Where-Object {$_.IPV4Address -match "^142"} | Out-File selectiveIP.txt -Append

}

# notepad.exe selectiveIP.txt