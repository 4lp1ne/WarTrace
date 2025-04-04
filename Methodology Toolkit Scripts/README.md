# ✅ How to Run Safely

This guide explains how to run the OSINT Tool Finder scripts on Windows and macOS/Linux.

---

## 🪟 Windows (PowerShell)

1. Open **PowerShell**
2. Navigate to the script directory:

   ```powershell
   cd "Path\To\Methodology Toolkit Scripts"
   ```

3. Temporarily allow script execution:

   ```powershell
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

4. Run the script:

   ```powershell
   .\mas_win.ps1
   ```

📝 **Output:** A Markdown file will be created in the `/output/` folder containing tools for your selected scenario.

---

## 🍎 macOS / 🐧 Linux (Bash)

1. Open **Terminal**
2. Navigate to the script folder:

   ```bash
   cd "Path/To/Methodology Toolkit Scripts"
   ```

3. Make the script executable:

   ```bash
   chmod +x mas_unix_osx.sh
   ```

4. Run the script:

   ```bash
   sudo bash mas_unix_osx.sh
   ```

📝 **Output:** The script will generate a Markdown file with the recommended OSINT tools in a subfolder like `./output/`.

---

## 📦 Example Output

```markdown
# OSINT Tools for: Airstrike on Civilian Area

## Image and Video Analysis
- [InVID](https://www.invid-project.eu/tools-and-services/invid-verification-plugin/)
- [FFmpeg](https://ffmpeg.org)
- [Deepware Scanner](https://www.deepware.ai)

## Geolocation
- [Geosint](https://github.com/4lp1ne/Geosint)
- [Google Earth Pro](https://www.google.com/earth/versions/#earth-pro)
- [SunCalc](https://www.suncalc.org)
```

---

> ⚠️ **Reminder:** This project is for ethical, legal, and educational use only. Always respect privacy, data rights, and the rule of law when using OSINT tools.

