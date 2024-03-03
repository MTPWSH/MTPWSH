#!/usr/bin/env pwsh
while ($true) {
    
    $programToRun = Read-Host "MTPWSH~"
    if ($programToRun -eq 'quit'){
        return 0
    }
    $programPath = Join-Path $PSScriptRoot "Programs" $programToRun.ToLower() "init.ps1"

    if (Test-Path $programPath) {
        & $programPath
    } else {
        Write-Output "$programPath not found"
    }
}
