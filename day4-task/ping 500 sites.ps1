cls

#$web = @("google.com","ltimindtree.com","flipkart.com")

#notepad.exe C:\Users\Jeetu\Desktop\ltibhub1\d4\sites.txt

$web = Get-Content "C:\Users\Jeetu\Downloads\top200.csv"

foreach ( $w in $web ) {

    if(Test-Connection $w -Count 1 -ErrorAction SilentlyContinue){
        Write-Host $w -ForegroundColor Green
    }else{
        Write-Host $w -ForegroundColor Red
        #$w | Out-File "C:\Users\Jeetu\Desktop\ltibhub1\d4\nonPingables.txt" -Append
    }

}