<# 
conditional statements
    - if 
    - if-else
    - Nested if-else
    - Switch

Arth Op:
    -eq
    -ne
    -gt
    -ge
    -lt
    -le
    -and
    -or


#>

# if 
cls
$a = 10
if( $a -eq 10 ){
    Write-Host "A equals 10"
}


# if-else
cls
$a = 109
if( $a -eq 10 ){
    Write-Host "A equals 10"
}else{
    Write-Host "A NOT equal to 10"
}

# if-else with Read-Host
cls
$a = Read-Host "ENter number: "
if( $a -eq 10 ){
    Write-Host "A equals 10"
}else{
    Write-Host "A NOT equal to 10"
}


# Task - ask user to enter 2 numbers & print the total of it.
cls
[int]$n1 = Read-Host "Enter 1st number" 
[int]$n2 = Read-Host "Enter 2nd number" 

# $n1.GetType()
# $n2.GetType()

#$n3 = $n1 + $n2


Write-Host "Total of $n1 & $n2 is "($n1+$n2)
Write-Host "Total of $n1 & $n2 is $($n1+$n2)"