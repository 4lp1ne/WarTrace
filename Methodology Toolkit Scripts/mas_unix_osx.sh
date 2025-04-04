#!/bin/bash

# mas_unix.sh - WarTrace Methodology Assistant with Markdown Export

declare -A osint_scenarios=(
    ["Airstrike on Civilian Area"]="Image/Video Analysis|InVID=https://www.invid-project.eu/tools-and-services/invid-verification-plugin/,FFmpeg=https://ffmpeg.org,Deepware Scanner=https://www.deepware.ai;Geolocation|Geosint=https://github.com/4lp1ne/Geosint,Google Earth Pro=https://www.google.com/earth/versions/#earth-pro,SunCalc=https://www.suncalc.org;Metadata Recovery|ExifTool=https://exiftool.org,Metapicz=https://www.metapicz.com;Satellite Verification|Sentinel Hub=https://www.sentinel-hub.com,Planet Labs=https://www.planet.com,SkyWatch=https://skywatch.com"
    ["Soldier Executing Civilians"]="Video Frame Analysis|FFmpeg=https://ffmpeg.org,InVID=https://www.invid-project.eu/tools-and-services/invid-verification-plugin/;Facial Recognition|PimEyes=https://pimeyes.com,Social Links=https://sociallinks.io;Reverse Search|Yandex=https://yandex.com/images/,Google Images=https://images.google.com;Secure Reporting|Bellingcat=https://www.bellingcat.com,ICC=https://www.icc-cpi.int,SecureDrop=https://securedrop.org"
    ["Mass Grave Discovery"]="Satellite Imagery|Sentinel Hub=https://www.sentinel-hub.com,SkyWatch=https://skywatch.com,Geosint=https://github.com/4lp1ne/Geosint;Sun Position & Timeline|SunCalc=https://www.suncalc.org;Documenting Evidence|ExifTool=https://exiftool.org,Syrian Archive=https://syrianarchive.org"
    ["Propaganda for Genocide"]="Reverse Image Search|TinEye=https://tineye.com,Google Images=https://images.google.com,Yandex=https://yandex.com/images;Deepfake Detection|InVID=https://www.invid-project.eu/tools-and-services/invid-verification-plugin/,Deepware Scanner=https://www.deepware.ai;Social Media Mining|Twint=https://github.com/twintproject/twint,Check by Meedan=https://meedan.com/check,Instaloader=https://instaloader.github.io"
    ["Use of Banned Weapons"]="Weapon ID|Reverse Search=https://images.google.com,Bellingcat=https://www.bellingcat.com;Image Verification|InVID=https://www.invid-project.eu/tools-and-services/invid-verification-plugin/,Jina AI=https://github.com/jina-ai;Metadata Extraction|ExifTool=https://exiftool.org,FFmpeg=https://ffmpeg.org"
    ["Forced Displacement"]="Testimony Collection|Instaloader=https://instaloader.github.io,Osintgram=https://github.com/Datalux/Osintgram;Geolocation|Geosint=https://github.com/4lp1ne/Geosint,Sentinel Hub=https://www.sentinel-hub.com;Conflict Mapping|Liveuamap=https://liveuamap.com,MapHub=https://maphub.net"
)

echo "=== WarTrace OSINT Tool Finder ==="
echo ""

# Get sorted list of scenario names
IFS=$'\n' sorted_scenarios=($(sort <<<"${!osint_scenarios[@]}"))
unset IFS

# Display menu
index=1
for scenario in "${sorted_scenarios[@]}"; do
    echo "$index. $scenario"
    ((index++))
done

# Get user input
echo ""
read -p "Select a scenario (1-${#sorted_scenarios[@]}): " choice
echo ""

# Validate input
if [[ ! "$choice" =~ ^[0-9]+$ ]] || ((choice < 1 || choice > ${#sorted_scenarios[@]})); then
    echo "[ERROR] Invalid selection."
    exit 1
fi

selected_index=$((choice - 1))
selected_scenario="${sorted_scenarios[$selected_index]}"
scenario_data="${osint_scenarios[$selected_scenario]}"

echo "Tools for $selected_scenario:"
echo ""

# Create output directory
output_dir="output"
mkdir -p "$output_dir"

# Create markdown file
filename="${selected_scenario// /_}_tools.md"
md_file="$output_dir/$filename"
echo "# OSINT Tools for: $selected_scenario" > "$md_file"
echo "" >> "$md_file"

# Process scenario data
IFS=';' read -ra categories <<< "$scenario_data"
for category in "${categories[@]}"; do
    IFS='|' read -ra parts <<< "$category"
    category_name="${parts[0]}"
    tools="${parts[1]}"
    
    echo "  $category_name"
    echo "## $category_name" >> "$md_file"
    echo "" >> "$md_file"
    
    IFS=',' read -ra tool_list <<< "$tools"
    for tool in "${tool_list[@]}"; do
        IFS='=' read -ra tool_parts <<< "$tool"
        tool_name="${tool_parts[0]}"
        tool_url="${tool_parts[1]}"
        
        echo "    - $tool_name"
        echo "- [$tool_name]($tool_url)" >> "$md_file"
    done
    
    echo "" >> "$md_file"
    echo ""
done

echo ""
echo "[SUCCESS] Markdown file created: $md_file"
