Param(
    [Parameter(Mandatory, HelpMessage = "Introduza o numero:")]
    [int]$value
)

if($value -le 0){
    Write-Host "Negativo"
}else{
    Write-Host "Positivo"
}