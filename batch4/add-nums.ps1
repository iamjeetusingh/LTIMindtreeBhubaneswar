function add-nums{
param(
    [int]$num1,
    [int]$num2
)
    $num3 = $num1 + $num2
    Write-Host "addition of $num1 & $num2 is $num3"
}

cls
add-nums -num1 10 -num2 15
add-nums -num1 105 -num2 150