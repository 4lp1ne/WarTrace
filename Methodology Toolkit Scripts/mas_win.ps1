# osint_tool_finder.ps1

$osintScenarios = @{
    "Propaganda" = @(
        "Reverse Image Search: Google Images, Yandex, TinEye, RevEye",
        "Deepfake Detection: InVID, Deepware Scanner, YouTube DataViewer",
        "Social Media OSINT: Twint, Instaloader, Check by Meedan",
        "AI Image Matching: Jina AI"
    )
    "Militant Symbolism" = @(
        "Reverse Image Search: Google Images, Yandex",
        "Facial Recognition: PimEyes, Social Links",
        "Metadata: ExifTool, Metapicz"
    )
    "Civilian Testimonies" = @(
        "Social Media OSINT: Twint, Instaloader, Osintgram, Check by Meedan",
        "Video Frame Analysis: FFmpeg, InVID",
        "Geolocation: Geosint, Google Earth Pro, Sentinel Hub"
    )
    "Leaked Docs & Reports" = @(
        "Metadata & Redaction: ExifTool, FFmpeg, Exif Pilot",
        "OCR/Text Extraction: Tesseract OCR",
        "News Verification: Check by Meedan, News API"
    )
    "Audio-Only Sources" = @(
        "Spectrogram Analysis: Audacity, FFmpeg",
        "Language Tools: Google Translate, Speech-to-text APIs"
    )
    "Map & Satellite Matching" = @(
        "Satellite Imagery: Sentinel Hub, Planet Labs, SkyWatch",
        "Sun Positioning: SunCalc",
        "Geolocation Tools: Geosint, Google Earth Pro"
    )
}

Write-Host "=== WarTrace OSINT Tool Finder (PowerShell) ===`n"
$categories = $osintScenarios.Keys
for ($i = 0; $i -lt $categories.Count; $i++) {
    Write-Host "$($i + 1). $($categories[$i])"
}

$choice = Read-Host "`nSelect a scenario (1-$($categories.Count))"
$index = [int]$choice - 1

if ($index -ge 0 -and $index -lt $categories.Count) {
    $selected = $categories[$index]
    Write-Host "`n🛠️ Tools for $selected:`n"
    $osintScenarios[$selected] | ForEach-Object { Write-Host " - $_" }
} else {
    Write-Host "❌ Invalid selection."
}
