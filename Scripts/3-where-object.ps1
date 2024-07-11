# Get-Service & Get-process

Get-Alias -Definition Get-Process       # lists the alias for get-process

Get-Process

Get-Process | Select-Object ProcessName, ID, CPU

[math]::PI

# to list the members of the cmdlet
Get-Process | Get-Member
Get-Date | Get-Member
Get-Help | Get-Member


ping google.com
Test-Connection google.com  


# to list all the running & stopped services
Get-Service 

# for specific service
Get-Service -Name BITS



# list all the service names of running services

Get-Command -Noun Object

Get-Service | Where-Object { $_.Status -eq "Running" } | Select-Object Name

Get-Service | Where-Object { ($_.Status -eq "Running") -and ($_.Name -match 'S$') } | Select-Object name

Get-Service | Where-Object { ($_.Status -eq "Running") -and ($_.Name -match '^S') } | Select-Object name

Get-Service | Where-Object { ($_.Status -eq "Running") -and ($_.Name -like '*ss*') } | Select-Object name


