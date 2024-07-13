# Arrays

# method 1 to define an array
$arr1 = @()
$arr1.GetType()

# method 2 to define an array
$arr2 = 1,2,3,4,5,6,7
$arr2.GetType()


$arr3 = @(1,2,5,326,13575,2134,15)
$arr3.Count
$arr3[0]
$arr3[1]
$arr3[-1]
$arr3[1..3]
$arr3[-1..-3]


#multi-dimentional array
$arr4 = @(
    @(1,2),
    @("a","b"),
    @(Get-Process)
)

$arr4[0][0]
$arr4[1][1]
$arr4[2][0]