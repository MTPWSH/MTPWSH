#!/usr/bin/env pwsh
while ($true) {
    
    $programToRun = Read-Host "MTPWSH~"
    if ($programToRun -eq 'quit' -or $programToRun -eq 'exit'){
        return 0
    }
    $programPath = Join-Path $PSScriptRoot "Programs" $programToRun.ToLower()
    $initPath = Join-Path $programPath "init.ps1"
    if (Test-Path $initPath) {
        & $initPath
    } elseif (Test-Path $programPath) {
        Write-Output "$programToRun is missing an init.ps1 file."
    } else {
        Write-Output "$programToRun not found."
    }
}
