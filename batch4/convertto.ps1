cls

# to list all services that starts with "A"
Get-Service | `
Select-Object name, DisplayName, StartType, Status | `
Where-Object {$_.Name -match "^a"}

# to list all the cmdlets that starts with convertto verb
Get-Command -Verb convertto

# getting & converting the services in an HTML webpage
Get-Service | `
Select-Object name, DisplayName, StartType, Status | `
Where-Object {$_.Name -match "^a"} | `
ConvertTo-Html | `
Out-File a-services.html

# opening the webpage on default browser
.\a-services.html

# getting & converting the services in an JSON 
Get-Service | `
Select-Object name, DisplayName, StartType, Status | `
Where-Object {$_.Name -match "^a"} | `
ConvertTo-Json | `
Out-File a-services.json
.\a-services.json

# getting & converting the services in an CSV 
Get-Service | `
Select-Object name, DisplayName, StartType, Status | `
Where-Object {$_.Name -match "^a"} | `
ConvertTo-Csv | `
Out-File a-services.csv
.\a-services.csv

