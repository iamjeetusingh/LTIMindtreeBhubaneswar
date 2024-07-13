<#
Task

ping 5 websites using 
	- functions
 	- pipeline
	- import sites from text file.

#>


function test-sites{
    param(
        [string]$site
    )
    if(Test-Connection $site -Count 1 -ErrorAction SilentlyContinue){
        Write-Host $site -ForegroundColor Green
    }else{
        Write-Host $site -ForegroundColor Red
    }
}

cls

$webs = Get-Content "C:\Users\Jeetu\Desktop\ltibhub1\d4\sites.txt"

$webs | foreach{
    test-sites -site $_
}