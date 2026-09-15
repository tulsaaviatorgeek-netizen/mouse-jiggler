<#
.SYNOPSIS
    Keeps the screen from sleeping by nudging the mouse cursor at a set interval.

.PARAMETER IntervalMinutes
    Minutes to wait between nudges. Default 5.

.EXAMPLE
    .\Jiggle.ps1
    .\Jiggle.ps1 -IntervalMinutes 3
#>

param(
    [double]$IntervalMinutes = 5
)

Add-Type -AssemblyName System.Windows.Forms

$intervalSeconds = [int]($IntervalMinutes * 60)

Write-Host "Mouse Jiggler started." -ForegroundColor Cyan
Write-Host "Nudging the cursor every $IntervalMinutes minute(s). Press Ctrl+C to stop." -ForegroundColor Cyan
Write-Host ""

while ($true) {
    Start-Sleep -Seconds $intervalSeconds

    $originalPos = [System.Windows.Forms.Cursor]::Position
    $nudgedPos = [System.Drawing.Point]::new($originalPos.X + 2, $originalPos.Y)

    [System.Windows.Forms.Cursor]::Position = $nudgedPos
    Start-Sleep -Milliseconds 100
    [System.Windows.Forms.Cursor]::Position = $originalPos

    $timestamp = Get-Date -Format "HH:mm:ss"
    Write-Host "[$timestamp] Jiggled." -ForegroundColor DarkGray
}
