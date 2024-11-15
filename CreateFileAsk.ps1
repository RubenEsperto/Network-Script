<#
    Programmer ....: (c) 2024 Ruben Esperto
    Data...........: 15/11/2024
    Observações....: Study of If and Else
#>

$status = 'KO'
If($status -eq 'OK'){
    Write-Host $False
} Elseif($status = 'KO'){
    Write-Host $True
}Else{
    Write-Host $False
}