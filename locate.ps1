$sourcePath = Join-Path (Get-Location) "alacritty"
$destinationPath = Join-Path $env:APPDATA "alacritty"

if (-not (Test-Path $destinationPath)) {
    New-Item -ItemType Directory -Path $destinationPath
}

Get-ChildItem -Path $sourcePath -Recurse | ForEach-Object {
    $targetFile = $_.FullName.Replace($sourcePath, $destinationPath)

    try {
        if (-not (Test-Path (Split-Path -Path $targetFile))) {
            New-Item -ItemType Directory -Path (Split-Path -Path $targetFile)
        }

        Copy-Item -Path $_.FullName -Destination $targetFile -Force
        Write-Output "Copied: $($_.FullName) to $targetFile"
    } catch {
        Write-Output "Failed to copy: $($_.FullName) Error: $_"
    }
}

Write-Output "Copy operation completed."
Write-Host "Press any key to quit..."
$null = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
