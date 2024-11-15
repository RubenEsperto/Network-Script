<#
    Programmer ....: (c) 2024 Ruben Esperto
    Data...........: 15/11/2024
    Observações....: Creates a backup
#>

Param(
    [string]$Path = './app',
    [string]$DestinationPath ='./'
    [switch]$PathIsWebApp
)

if ($PathIsWebApp -eq $True) {
    Try{
        $ContainsApplicationFiles ="$((Get-ChildItem $Path).Extension | Sort-Object -Unique)" -match '\.js|\.html|\.css'
        if (-Not $ContainsApplicationFiles){
            Throw "Not a web app"
        } Else {
            Write-Host "The source is a web app, proceding"
        }
    } Catch {
        Throw "The backup was not created $($_.Execution.Message)"
    }
}
$date = Get-Date -format "yyyy-MM-dd"
$DestinationFile ="$($DestinationPath + 'backup-' + $date + '.zip')"
if(-Not (Test-Path $DestinationFile)){
    Compress-Archive -Path $path -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date)"
    Write-Host "created backup at $($DestinationPath + 'backup-' + $date + '.zip')"
}Else{
    Write-Error "The backup for today has already been created"
}