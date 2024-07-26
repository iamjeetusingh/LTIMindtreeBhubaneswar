# Array

# method 1 to create an array
$arr1 = 1,2,3,4,5
$arr1.GetType()

# method 2 to create an array
$arr2 = @()      #empty array
$arr2.GetType()

$arr3 = @(0,1,2,3,4,5,6,7,8,9)   # array with integers
$arr3.GetType()
$arr3.Count
$arr3[0]
$arr3[1]
$arr3[-1]
$arr3[1..5]
$arr3[-1..-5]

$arr4 = @('a','b','c')    # array with strings


# task - create an array with numbers from 50 t0 100 and print them.
$arr5 = @(50..100)
$arr5



# multi-dimentional array

$arr6 = @(
    @(1,2),
    @('a','b'),
    @(Get-Process)
)

$arr6[0][0]
$arr6[1][1]
$arr6[2][2]