# to print something on PS console
cls
Write-Host "Hello Batch 4" 
Write-Host "Hello Batch 4" -ForegroundColor red -BackgroundColor White
Write-Warning "PowerShell is very EASY"

# to list all the cmdlets that starts with WRITE verb.
Get-Command -Verb write 