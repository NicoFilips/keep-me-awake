<#
.SYNOPSIS
    This script periodically simulates a key press in the background.

.DESCRIPTION
    StayAwake.ps1 simulates a key press at a user-defined interval to keep the computer active.

.PARAMETER Key
    The key to be pressed. Default is "F13".

.PARAMETER Interval
    The interval in seconds between key presses. Default is 120 seconds (2 minutes).

.EXAMPLE
    .\StayAwake.ps1 -Key "F13" -Interval 120
    Simulates an F13 key press every two minutes.
#>

# Parameter
param(
    [string]$Key = "F13",
    [int]$Interval = 120
)

# Simulates a keypress in windows
function Invoke-KeyStrokeWindows {
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.SendKeys]::SendWait("{$Key}")
}

# Display PowerShell version
$PSVersion = $PSVersionTable.PSVersion
Write-Host "PowerShell Version: $PSVersion"

# Identify the operating system
if ($IsWindows) {
    Write-Host "Detected Operating System: Windows"
} elseif ($IsLinux) {
    Write-Host "Detected Operating System: Linux"
} elseif ($IsMacOS) {
    Write-Host "Detected Operating System: MacOS"
} else {
    Write-Host "Operating System not recognized"
}

# Main loop
while ($true) {
    if ($IsWindows) {
		Write-Host "Key was pressed."
        Invoke-KeyStrokeWindows
    } elseif ($IsLinux) {
		Invoke-KeyStrokeLinux
		Write-Host "Key was pressed."
	} else {
        Write-Host "Operating System is not supported."
    }
    Start-Sleep -Seconds $Interval
}

# checks if xdotool is installed
function Check-xdotoolInstalled {
    $isInstalled = $false
    try {
        $isInstalled = (Get-Command "xdotool" -ErrorAction Stop) -ne $null
    } catch {
        $isInstalled = $false
    }
    return $isInstalled
}

# installs xdotool
function Install-xdotool {
    if (-not (Check-xdotoolInstalled)) {
        Write-Host "xdotool is beeing installed. Run in admin mode."
        sudo apt-get update
        sudo apt-get install xdotool -y
    }
}

function Invoke-KeyStrokeLinux {
    if (Check-xdotoolInstalled) {
        xdotool key $Key
    } else {
        Write-Host "xdotool is not installed. Keypress can't be simulated."
    }
}