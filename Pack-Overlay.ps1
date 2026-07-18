# Pack PoB 3.29 preview overlay zip from local install.
# Usage:
#   .\Pack-Overlay.ps1
#   .\Pack-Overlay.ps1 -Lite          # exclude skill number dumps
#   .\Pack-Overlay.ps1 -PoBRoot "D:\Path of Building Community"

param(
	[string]$PoBRoot = "$env:APPDATA\Path of Building Community",
	[switch]$Lite,
	[string]$OutDir = $PSScriptRoot
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $PoBRoot)) {
	throw "PoB root not found: $PoBRoot"
}

$stamp = Get-Date -Format "yyyyMMdd"
$mode = if ($Lite) { "lite" } else { "full" }
$stage = Join-Path $OutDir ("_stage_overlay_" + $mode)
$zipName = "PoB-3.29-Preview-overlay-$mode-$stamp.zip"
$zipPath = Join-Path $OutDir $zipName

$files = @(
	# A ??features / calc
	"Classes\ItemsTab.lua",
	"Classes\Item.lua",
	"Classes\Tooltip.lua",
	"Classes\GemSelectControl.lua",
	"Modules\Data.lua",
	"Modules\ModParser.lua",
	"Modules\CalcOffence.lua",
	"Modules\CalcPerform.lua",
	"Modules\CalcSections.lua",
	"Modules\CalcSetup.lua",
	"Modules\ConfigOptions.lua",
	"Modules\ItemTools.lua",
	"Assets\legionicon.png",

	# B ??content
	"Data\Vestigial.lua",
	"Data\FoulbornReplacements.lua",
	"Data\ModFoulborn.lua",
	"Data\ModFoulbornMap.lua",
	"Data\EnchantmentTalisman.lua",
		"Data\ModJewelAbyss.lua",
	"Data\Bases\amulet.lua",
	"Data\Global.lua",
	"Data\Uniques\jewel.lua",
	"Data\Uniques\amulet.lua",
	"Data\Uniques\body.lua",
	"Data\Uniques\boots.lua",
	"Data\Uniques\gloves.lua",
	"Data\Uniques\helmet.lua",
	"Data\Uniques\mace.lua",
	"Data\Uniques\ring.lua",
	"Data\Uniques\staff.lua",
	"Data\Uniques\wand.lua",
	"Data\Uniques\shield.lua",
	"Data\Uniques\axe.lua",
	"Data\Uniques\sword.lua",
	"Data\Uniques\quiver.lua",
	"TreeData\3_27\tree.lua",
	"TreeData\3_28\tree.lua"
)

if (-not $Lite) {
	$files += @(
		"Data\Skills\act_str.lua",
		"Data\Skills\act_dex.lua",
		"Data\Skills\act_int.lua",
		"Data\Skills\sup_str.lua",
		"Data\Skills\sup_dex.lua",
		"Data\Skills\sup_int.lua",
		"Data\Skills\other.lua"
	)
}

if (Test-Path -LiteralPath $stage) {
	Remove-Item -LiteralPath $stage -Recurse -Force
}
New-Item -ItemType Directory -Path $stage -Force | Out-Null

# Docs + one-click installer at zip root
foreach ($doc in @("README.md", "FEATURES.md", "FILELIST.md", "Install.bat", "GITHUB_RELEASE.md")) {
	$srcDoc = Join-Path $PSScriptRoot $doc
	if (Test-Path -LiteralPath $srcDoc) {
		Copy-Item -LiteralPath $srcDoc -Destination (Join-Path $stage $doc) -Force
	}
}

$missing = New-Object System.Collections.Generic.List[string]
$copied = 0
foreach ($rel in $files) {
	$src = Join-Path $PoBRoot $rel
	if (-not (Test-Path -LiteralPath $src)) {
		$missing.Add($rel)
		continue
	}
	$dst = Join-Path $stage $rel
	$dstDir = Split-Path -Parent $dst
	if (-not (Test-Path -LiteralPath $dstDir)) {
		New-Item -ItemType Directory -Path $dstDir -Force | Out-Null
	}
	Copy-Item -LiteralPath $src -Destination $dst -Force
	$copied++
}

if ($missing.Count -gt 0) {
	Write-Warning ("Missing {0} file(s):" -f $missing.Count)
	$missing | ForEach-Object { Write-Warning ("  - " + $_) }
}

if (Test-Path -LiteralPath $zipPath) {
	Remove-Item -LiteralPath $zipPath -Force
}

Compress-Archive -Path (Join-Path $stage "*") -DestinationPath $zipPath -CompressionLevel Optimal

$sizeMB = [math]::Round((Get-Item -LiteralPath $zipPath).Length / 1MB, 2)
Write-Host ""
Write-Host ("Packed {0} files -> {1} ({2} MB)" -f $copied, $zipPath, $sizeMB)
Write-Host ("Mode: {0}" -f $mode)
Write-Host "Install: extract zip into PoB root (merge folders), then restart PoB (F5)."
Write-Host ("Stage left at: {0} (delete if you want)" -f $stage)
