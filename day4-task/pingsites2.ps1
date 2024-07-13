# Loops

<#
    
    - while loop
    - do-while loop
    - for loop
    - foreach loop

#>

cls

$number = @(1..1000)

foreach( $n in $number ){
    $n
}



cls

$web = @("google.com","ltimindtree.com","flipkart.com")

foreach ( $w in $web ) {

    if(Test-Connection $w -Count 1 -ErrorAction SilentlyContinue){
        Write-Host "$w is pingable" -ForegroundColor Green
    }else{
        Write-Host "$w is NOT pingable" -ForegroundColor Red
    }

}