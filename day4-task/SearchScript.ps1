cls

$drives = @("d:\","e:\")

$file = Read-Host "enter file name to search: "

foreach($d in $drives){
    
    $retr = Get-ChildItem -Path $d -Filter $file -Recurse -Force -ErrorAction SilentlyContinue

    Write-Host "$($file)'s location is: "  -NoNewline
    Write-Host $retr.FullName -ForegroundColor Yellow

}