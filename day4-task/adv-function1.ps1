function set-feedback{
[cmdletbinding()]
param(
    [parameter(Mandatory=$true)]
    [ValidateSet('awesome','aweful','no idea')]
    [string]$fb
)

Write-Host "this training is: $fb"

}

cls

set-feedback -fb 'awesome'
set-feedback -fb 'aweful'
set-feedback