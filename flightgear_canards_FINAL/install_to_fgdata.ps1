$ErrorActionPreference = "Stop"

$packageRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$fgRoot = "C:\Users\aliki\FlightGear\Downloads\fgdata_2024_1"

$srcAircraft = Join-Path $packageRoot "Aircraft\RocketTest"
$dstAircraftParent = Join-Path $fgRoot "Aircraft"
$dstAircraft = Join-Path $dstAircraftParent "RocketTest"
$srcProtocol = Join-Path $packageRoot "Protocol\canards.xml"
$dstProtocolDir = Join-Path $fgRoot "Protocol"
$dstProtocol = Join-Path $dstProtocolDir "canards.xml"

New-Item -ItemType Directory -Force -Path $dstAircraftParent | Out-Null
New-Item -ItemType Directory -Force -Path $dstProtocolDir | Out-Null

Copy-Item -LiteralPath $srcAircraft -Destination $dstAircraftParent -Recurse -Force
Copy-Item -LiteralPath $srcProtocol -Destination $dstProtocol -Force

Write-Host "Installed Aircraft/RocketTest to: $dstAircraft"
Write-Host "Installed Protocol/canards.xml to: $dstProtocol"
Write-Host "Close FlightGear completely, then start runfg_canards_FINAL.bat"
