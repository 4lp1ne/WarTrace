#!/bin/bash

declare -A osint_scenarios

osint_scenarios["Propaganda"]="Google Images, Yandex, TinEye, RevEye; InVID, Deepware Scanner, YouTube DataViewer; Twint, Instaloader, Check by Meedan; Jina AI"
osint_scenarios["Militant Symbolism"]="Google Images, Yandex; PimEyes, Social Links; ExifTool, Metapicz"
osint_scenarios["Civilian Testimonies"]="Twint, Instaloader, Osintgram, Check by Meedan; FFmpeg, InVID; Geosint, Google Earth Pro, Sentinel Hub"
osint_scenarios["Leaked Docs & Reports"]="ExifTool, FFmpeg, Exif Pilot; Tesseract OCR; Check by Meedan, News API"
osint_scenarios["Audio-Only Sources"]="Audacity, FFmpeg; Google Translate, Speech-to-text APIs"
osint_scenarios["Map & Satellite Matching"]="Sentinel Hub, Planet Labs, SkyWatch; SunCalc; Geosint, Google Earth Pro"

echo "=== WarTrace OSINT Tool Finder (Bash) ==="
options=("Propaganda" "Militant Symbolism" "Civilian Testimonies" "Leaked Docs & Reports" "Audio-Only Sources" "Map & Satellite Matching")

select opt in "${options[@]}"; do
    if [[ -n "$opt" ]]; then
        echo -e "\n🛠️ Tools for $opt:"
        IFS=';' read -ra groups <<< "${osint_scenarios[$opt]}"
        for group in "${groups[@]}"; do
            echo " - $group"
        done
        break
    else
        echo "❌ Invalid option."
    fi
done
