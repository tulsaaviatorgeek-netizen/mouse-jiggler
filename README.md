# Mouse Jiggler

A small PowerShell script that keeps Windows from going idle by nudging the mouse cursor at a set interval.

## Usage

```powershell
.\Jiggle.ps1
.\Jiggle.ps1 -IntervalMinutes 3
```

| Parameter | Description | Default |
|---|---|---|
| `IntervalMinutes` | Minutes to wait between nudges | `5` |

Press `Ctrl+C` to stop.

Alternatively, double-click [Start-Jiggle.bat](Start-Jiggle.bat) to launch the script with the default interval, without opening a PowerShell window manually.

## Requirements

- Windows with PowerShell
- No external dependencies (uses the built-in `System.Windows.Forms` assembly)
