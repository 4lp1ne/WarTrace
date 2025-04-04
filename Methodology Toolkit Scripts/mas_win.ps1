# mas_win.ps1 - WarTrace Methodology Assistant with Markdown Export

$osintScenarios = @{
    "Airstrike on Civilian Area" = @(
        @("Image/Video Analysis", @("InVID=https://www.invid-project.eu/tools-and-services/invid-verification-plugin/", "FFmpeg=https://ffmpeg.org", "Deepware Scanner=https://www.deepware.ai")),
        @("Geolocation", @("Geosint=https://github.com/4lp1ne/Geosint", "Google Earth Pro=https://www.google.com/earth/versions/#earth-pro", "SunCalc=https://www.suncalc.org")),
        @("Metadata Recovery", @("ExifTool=https://exiftool.org", "Metapicz=https://www.metapicz.com")),
        @("Satellite Verification", @("Sentinel Hub=https://www.sentinel-hub.com", "Planet Labs=https://www.planet.com", "SkyWatch=https://skywatch.com"))
    )
    "Soldier Executing Civilians" = @(
        @("Video Frame Analysis", @("FFmpeg=https://ffmpeg.org", "InVID=https://www.invid-project.eu/tools-and-services/invid-verification-plugin/")),
        @("Facial Recognition", @("PimEyes=https://pimeyes.com", "Social Links=https://sociallinks.io")),
        @("Reverse Search", @("Yandex=https://yandex.com/images/", "Google Images=https://images.google.com")),
        @("Secure Reporting", @("Bellingcat=https://www.bellingcat.com", "ICC=https://www.icc-cpi.int", "SecureDrop=https://securedrop.org"))
    )
    "Mass Grave Discovery" = @(
        @("Satellite Imagery", @("Sentinel Hub=https://www.sentinel-hub.com", "SkyWatch=https://skywatch.com", "Geosint=https://github.com/4lp1ne/Geosint")),
        @("Sun Position & Timeline", @("SunCalc=https://www.suncalc.org")),
        @("Documenting Evidence", @("ExifTool=https://exiftool.org", "Syrian Archive=https://syrianarchive.org"))
    )
    "Propaganda for Genocide" = @(
        @("Reverse Image Search", @("TinEye=https://tineye.com", "Google Images=https://images.google.com", "Yandex=https://yandex.com/images")),
        @("Deepfake Detection", @("InVID=https://www.invid-project.eu/tools-and-services/invid-verification-plugin/", "Deepware Scanner=https://www.deepware.ai")),
        @("Social Media Mining", @("Twint=https://github.com/twintproject/twint", "Check by Meedan=https://meedan.com/check", "Instaloader=https://instaloader.github.io"))
    )
    "Use of Banned Weapons" = @(
        @("Weapon ID", @("Reverse Search=https://images.google.com", "Bellingcat=https://www.bellingcat.com")),
        @("Image Verification", @("InVID=https://www.invid-project.eu/tools-and-services/invid-verification-plugin/", "Jina AI=https://github.com/jina-ai")),
        @("Metadata Extraction", @("ExifTool=https://exiftool.org", "FFmpeg=https://ffmpeg.org"))
    )
    "Forced Displacement" = @(
        @("Testimony Collection", @("Instaloader=https://instaloader.github.io", "Osintgram=https://github.com/Datalux/Osintgram")),
        @("Geolocation", @("Geosint=https://github.com/4lp1ne/Geosint", "Sentinel Hub=https://www.sentinel-hub.com")),
        @("Conflict Mapping", @("Liveuamap=https://liveuamap.com", "MapHub=https://maphub.net"))
    )
}

Write-Host "=== WarTrace OSINT Tool Finder ==="
Write-Host ""

$categories = $osintScenarios.Keys | Sort-Object
for ($i = 0; $i -lt $categories.Length; $i++) {
    Write-Host "$($i + 1). $($categories[$i])"
}

$choice = Read-Host "`nSelect a scenario (1-$($categories.Length))"
$index = [int]$choice - 1

if ($index -ge 0 -and $index -lt $categories.Length) {
    $selected = $categories[$index]
    $tools = $osintScenarios[$selected]

    Write-Host "`nTools for $selected`:"
    Write-Host ""

    $outputDir = "output"
    if (-not (Test-Path $outputDir)) {
        New-Item -ItemType Directory -Path $outputDir | Out-Null
    }

    $mdFile = "$outputDir\$($selected -replace ' ', '_')_tools.md"
    Set-Content -Path $mdFile -Value "# OSINT Tools for: $selected`n"

    foreach ($group in $tools) {
        $label = $group[0]
        $entries = $group[1]

        Write-Host "  $label"
        Add-Content -Path $mdFile -Value "## $label`n"

        foreach ($entry in $entries) {
            $parts = $entry -split "="
            $name = $parts[0].Trim()
            $url = $parts[1].Trim()
            Write-Host "    - $name"
            Add-Content -Path $mdFile -Value "- [$name]($url)"
        }

        Add-Content -Path $mdFile -Value "`n"
        Write-Host ""
    }

    Write-Host "`n[SUCCESS] Markdown file created: $mdFile`n"
}
else {
    Write-Host "`n[ERROR] Invalid selection."
}
