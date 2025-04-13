# 🌍 A Digital List Of War Crimes OSINT Tools *

## This Project Is Always in Progress — Contributions Welcome! ##

**Document, verify, and report war crimes and hate speech using open-source intelligence.**

This toolkit empowers journalists, activists, and human rights defenders to gather and validate digital evidence ethically and securely.

---

## Exemple:

![imgonline-com-ua-twotoone-WxpUN1sTi13he2W](https://github.com/user-attachments/assets/94450d0a-577a-429c-be08-e1bbdb875d7a)

---

## ✊ Mission

- Investigate war crimes, hate speech, and human rights abuses
- Geolocate and verify images and videos
- Track perpetrators across social platforms
- Report findings securely to legal and justice bodies

---

## 📁 Tool Categories (ASCII Tree Index)

**All Tools Links Under tools.md**

```text
Osint-War-Crimes-Tools/tools.md
├── Reverse_Image_Search
│   ├── Google Images
│   ├── Yandex
│   ├── TinEye
│   └── RevEye
├── Facial_Recognition
│   ├── PimEyes
│   └── Social Links
├── Deepfake_Detection
│   ├── Deepware Scanner
│   ├── InVID
│   └── YouTube DataViewer
├── Geolocation
│   ├── Picarta.ai
│   ├── Google Earth Pro
│   ├── SunCalc
│   ├── Sentinel Hub
│   ├── Planet Labs
│   ├── SkyWatch
│   └── Geosint
├── Metadata_Redaction
│   ├── ExifTool
│   ├── Metapicz
│   ├── FFmpeg
│   └── Exif Pilot
├── Social_Media_OSINT
│   ├── Twint
│   ├── Instaloader
│   ├── Check by Meedan
│   ├── HateSonar
│   ├── TweetScraper
│   ├── Tweepy
│   ├── Osintgram
│   └── OsintTube
├── Phone_Number_OSINT
│   ├── Epieos
│   ├── PhoneInfoga
│   ├── OSINT Industries
│   ├── Sync.me
│   ├── WhoCalledMe / NumBuster
│   ├── Truecaller
│   └── Scamcallfighters
├── Privacy_Encryption
│   ├── Tails OS
│   ├── ProtonVPN
│   └── VeraCrypt
├── Browser_Automation
│   ├── Selenium
│   └── Puppeteer
├── AI_Image_Matching
│   ├── Jina AI
│   └── Image Super Resolution
├── News_Monitoring
│   ├── GDELT Project
│   ├── News API
│   └── Common Crawl
├── Live_Conflict_Maps
│   ├── Liveuamap
│   └── MapHub
├── Blockchain_Analysis
│   ├── Mempool Explorer
│   ├── Bitquery
│   └── Chainalysis
├── Web_Archiving
│   └── Wayback Machine
└── Reporting_Resources
    ├── ICC
    ├── Bellingcat
    ├── Syrian Archive
    └── SecureDrop


```


---

## 📄 Reporting Guidelines


### ✅ What to Collect

- **Original files only** — Never alter videos or images.
- **Timestamps** — Use file metadata, video upload times, or contextual cues.
- **Geolocation info** — Add GPS data from metadata or visual geolocation.
- **Chain of custody** — Describe where/how evidence was found.
- **Contextual info** — What, where, when, who, why (if known).

### 📎 Formatting Your Submission

```text
submission_folder/
├── media/
│   ├── original_video.mp4
│   └── screenshot_1.jpg
├── metadata.txt
├── notes.txt
└── location_map.jpg
```

**metadata.txt**

- File creation date
- Device info (if available)
- GPS coordinates
- Link to reverse search or geolocation validation

**notes.txt**

- Time, place, suspected groups, casualties (if known)

### 🕊️ Ethical Guidelines

- Don’t reveal private identities unless public/relevant
- Redact bystanders or unrelated individuals
- Respect consent laws when interviewing witnesses
- Only share with vetted legal/humanitarian orgs



### 📤 Submission Platforms

| Organization   | Link                                                                       |
| -------------- | -------------------------------------------------------------------------- |
| ICC            | [https://www.icc-cpi.int/contact-us](https://www.icc-cpi.int/contact-us)   |
| Bellingcat     | [https://www.bellingcat.com/contact/](https://www.bellingcat.com/contact/) |
| Syrian Archive | [https://syrianarchive.org/en/submit](https://syrianarchive.org/en/submit) |

Anonymous submissions: [SecureDrop](https://securedrop.org/)

# 1) exemple of report :

# 🧪 OSINT Report — Hate Speech & Violence Promotion Documentation in social plateforms

## 🎯 Case Title  
**Incitation à la haine contre un groupe ethnique**

## 📅 Date of Incident  
**March 28, 2025**

## 🌐 Platform  
**YouTube**  
**Video URL:** https://youtube.com/watch?v=xxxxxxxxx

---

## 🧩 Step 1: Capture & Preserve Evidence

- 📸 **Screenshots** taken showing:
  - Comment
  - Username
  - Timestamp
  - Comment thread context

- 🌐 **Web Archiving**
  - [✅ Wayback Machine Snapshot](https://web.archive.org/web/YYYYMMDDHHMMSS/https://youtube.com/watch?v=xxxxxxxxx)
  - [✅ Archive.today](https://archive.ph/XXXXXXXX)

- 🕒 Evidence captured at: **2025-03-28 17:03 UTC**

---

## 🧠 Step 2: Contextual Toxicity Analysis

- 🔍 Tools used:
  - [HateSonar](https://github.com/vzhou842/hatesonar)
  - [Perspective API](https://www.perspectiveapi.com/)

- **Results:**
  - Toxicity score: `0.91`
  - Identity attack score: `0.87`

- **Keywords/Flags:**
  - Dehumanizing language
  - Historical hate symbols
  - Call to violence

---

## 🕵️ Step 3: Account Attribution

- **OSINT Techniques:**
  - Reverse image search of profile picture (Google, Yandex, PimEyes)
  - Handle analysis using:
    - `OSINTgram` (Instagram link discovery)
    - `Twint` (Twitter/X profile scraping)
    - `Epieos` (email/phone lookup)

- **Findings:**
  - Repeated hate speech from same handle across X, Facebook
  - Possible alias used on extremist forums

---

## 🌍 Step 4: Social Corroboration

- **Crowd verification tools:**
  - `TweetScraper` to search real-time X mentions
  - `Check` by Meedan for collaborative verification

- **Results:**
  - 5 other users flagged the comment on the same day
  - 12 likes and 3 replies endorsing the hateful message

---

## 📨 Step 5: Submission for Investigation

- 🗂️ Packaged Material:
  - `screenshots/` directory with annotated images
  - `archive_links.txt` with frozen URLs
  - `toxicity_report.json` from HateSonar & Perspective
  - `user_profile_report.md` with social links and activity
  - `summary_notes.md` with legal and contextual description

- 🧾 Submitted to:
  - [Bellingcat Tip Submission](https://www.bellingcat.com/contact/)
  - [EU DisinfoLab](https://www.disinfo.eu/)
  - [YouTube Trust & Safety](https://support.google.com/youtube/answer/2802027)
  - [Local Hate Speech Monitoring NGO]

---

# 2) exemple of report :

## 🧪 Sample Case Report: OSINT Verification Walkthrough (Ukraine)

**Title:** Airstrike on Residential Area\
**Date of Incident:** March 15, 2022\
**Location:** Mariupol, Ukraine\
**Source:** Telegram channel

### Step 1: Verify Video Authenticity

- Used [InVID](https://www.invid-project.eu/tools/) to extract keyframes
- Reverse searched on Google/Yandex
- Matched frames to earlier video, confirming visual consistency

### Step 2: Geolocate

- Tools: [Picarta.ai](https://www.picarta.ai), [Google Earth](https://earth.google.com), [SunCalc](https://suncalc.org)
- Matched buildings + timestamp validation from shadows
- Coordinates confirmed: `47.0966, 37.5562`

### Step 3: Social Verification

- [Twint](https://github.com/twintproject/twint) found tweets from local witnesses
- Used [Check](https://meedan.com/check/) for collaborative review

### Step 4: Metadata Extraction

- [ExifTool](https://exiftool.org/) shows device: Samsung A51, date: 2022-03-15 14:22 UTC

### Step 5: Submission

- Sent to Bellingcat
- Attached: original video, annotated images, metadata, contextual notes

---

# 3) exemple of report :

## 🧪 Sample Case Report: OSINT Verification Walkthrough (Gaza)

**Title:** Alleged Airstrike on Civilian Convoy\
**Date of Incident:** October 13, 2023\
**Location:** Salah al-Din Road, Gaza Strip\
**Source:** Video uploaded to Telegram and X (Twitter)

### Step 1: Verify Video Authenticity

- Used [InVID](https://www.invid-project.eu/tools/) to extract thumbnails and keyframes
- Ran reverse image searches on Google and Yandex
- No prior matches found — suggests original upload

### Step 2: Geolocate

- Identified road layout and nearby structures
- Used [Picarta.ai](https://www.picarta.ai) + confirmed with [Google Earth Pro](https://www.google.com/earth/versions/#earth-pro)
- Verified timestamp using [SunCalc](https://www.suncalc.org/)
- Coordinates: `31.4297, 34.3795`

### Step 3: Social Verification

- [Twint](https://github.com/twintproject/twint) for eyewitness tweets
- Matched video scene with posts from [Al Jazeera](https://www.aljazeera.com/) and local channels
- Verified same visuals posted by multiple independent sources

### Step 4: Metadata Extraction

- [ExifTool](https://exiftool.org/) – Video stripped by Telegram, but creation date retained: `2023-10-13 16:40 UTC`

### Step 5: Submission

- Packaged raw files, keyframes, and location validation
- Sent to Syrian Archive and Bellingcat

---

## 🤝 Contribute

- PRs welcome for new tools or case studies
- Translate content into other languages
- Submit anonymized real-world walkthroughs

---

## 📜 License

MIT — Always credit original sources and follow platform TOS

> This toolkit is a living resource. Maintain it as tools, conflicts, and laws evolve.

**Stay ethical. Stay anonymous. Stay accurate.** 🔍🌐

