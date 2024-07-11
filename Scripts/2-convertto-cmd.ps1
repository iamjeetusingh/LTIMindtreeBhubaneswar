# list the total number of cmdlets with the verb "ConvertTo".


Get-Command  convertto*                           # to list all cmdlets
Get-Command  convertto* | Measure-Object          # to count the cmdlets that start with "ConvertTo"


Get-Process | Sort-Object ProcessName -Unique | Select-Object ProcessName, Id

# convert data to TEXT file
Get-Process | Sort-Object ProcessName -Unique | `
Select-Object ProcessName, Id | `
Out-File uniqueProcess.txt
.\uniqueProcess.txt

# converting data to HTML format
Get-Process | Sort-Object ProcessName -Unique | `
Select-Object ProcessName, Id | ConvertTo-Html | `
Out-File uniqueProcess.html
.\uniqueProcess.html

# converting data to JSON format
Get-Process | Sort-Object ProcessName -Unique | `
Select-Object ProcessName, Id | `
ConvertTo-Json | `
Out-File uniqueProcess.json
.\uniqueProcess.json


# converting data to XML format - WRONG WAY
Get-Process | Sort-Object ProcessName -Unique | `
Select-Object ProcessName, Id | ConvertTo-Xml | Out-File uniqueProcess.xml

# converting data to XML format - RIGHT WAY
Get-Process | Sort-Object ProcessName -Unique | `
Select-Object ProcessName, Id | Export-Clixml uniqueProcess.xml



#Comparing JSON and XML
Get-Service   |  ConvertTo-Json  | Out-File  services.json
Get-Service   |  Export-Clixml services.xml