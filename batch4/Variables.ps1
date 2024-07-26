<# data structures

    1. Variables
    2. Array
    3. Hashtables

#>

# Variables
$a = 10
$a.GetType()

$a = 3.14
$a.GetType()
$a

$b = [math]::Round(([math]::PI),4)
$b
$b.GetType()

$c = "Hello Batch 4"
$c.GetType()
$c.Length

$d = Get-Date
$d.GetType()
$d.DayOfWeek
$d.DayOfYear
$d.Hour
$d.Minute
$d.Second


# to list all the members of different cmdlets
Get-Date    | Get-Member
Get-Service | Get-Member

# common (global) variables
$Error


# to create a $PROFILE
New-Item -Path $profile -ItemType File -Force

# to validate if file is present or not
Test-Path $profile 