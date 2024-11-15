param(
    $Path
)

if (-Not $Path -eq'') {
    New-Item $Path
    Write-Host "O ficheiro $Path foi criado"
}Else{
    Write-Error "Esecifique o caminho para o ficheiro"
}