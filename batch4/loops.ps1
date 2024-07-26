<# loops
    - while loop
    - do-while loop
    - for loop
    - foreach loop
#>


# do-while loop
cls
$array = @("item1", "item2", "item3", "item4")
$counter = 0;
do {
   $array[$counter]
   $counter += 1
} while($counter -lt $array.length)


# While loop
$arr1 = @("a","b","c")
$c = 0
cls
while ( $c -lt $arr1.Length ){
    $arr1[$c]
    $c += 1
    sleep 1
}

# for loop
cls
$array = @("item1", "item2", "item3")
for($i = 0; $i -lt $array.length; $i++){ 
    $array[$i] 
}


# foreach loop
cls
$arr1 = @("item1", "item2", "item3", "i4", "i5")
foreach( $a in $arr1 ){
    Write-Host $a
}

# to ping 
cls
$websites = @("google.com","ltimindtree.com","youtube.com","amazon.com","flipkart.com")
foreach( $w in $websites ){

    Test-Connection $w -Count 1 -ErrorAction SilentlyContinue | Select-Object Address, IPV4Address
    
}


# to ping the websites and get the IP/website names from a text file.
notepad.exe E:\PowerShell\batch4\websites.txt

cls

$mysites = Get-Content E:\PowerShell\batch4\websites.txt

foreach( $m in $mysites ){
    
    Test-Connection $m -Count 1 -ErrorAction SilentlyContinue | `
    Select-Object Address, IPV4Address | `
    Out-File .\mysites.txt -Append

}