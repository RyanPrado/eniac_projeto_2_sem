#!/usr/bin/env pwsh
$ErrorActionPreference = 'Stop'

function Log {
    param([string]$Message)
    Write-Host "[devcontainer initialize] $Message"
}

$ScriptDir = Split-Path -Path $MyInvocation.MyCommand.Path -Parent
$DevcontainerDir = Split-Path -Path $ScriptDir -Parent
$RepoRoot = Split-Path -Path $DevcontainerDir -Parent
$SourceEnv = Join-Path -Path $RepoRoot -ChildPath '.env'
$ExampleEnv = Join-Path -Path $RepoRoot -ChildPath '.env.example'
$TargetEnv = Join-Path -Path $DevcontainerDir -ChildPath '.env'

if (Test-Path -Path $SourceEnv) {
    $matchesExisting = $false
    if (Test-Path -Path $TargetEnv) {
        try {
            $sourceHash = (Get-FileHash -Algorithm SHA256 -Path $SourceEnv).Hash
            $targetHash = (Get-FileHash -Algorithm SHA256 -Path $TargetEnv).Hash
            $matchesExisting = ($sourceHash -eq $targetHash)
        } catch {
            $matchesExisting = $false
        }
    }

    if ($matchesExisting) {
        Log ".devcontainer/.env already matches repository .env"
    } else {
        Copy-Item -Path $SourceEnv -Destination $TargetEnv -Force
        Log "Copied repository .env into .devcontainer/.env"
    }
} else {
    Copy-Item -Path $ExampleEnv -Destination $TargetEnv -Force
    Log "Created .devcontainer/.env with default port values (8080/3306)"
}
