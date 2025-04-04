# 🌍 Digital Witness OSINT Toolkit

**Document, verify, and report war crimes and hate speech using open-source intelligence.** This toolkit empowers journalists, activists, and human rights defenders to gather and validate digital evidence ethically and securely.

---

## ✊ Mission
- Investigate war crimes, hate speech, and human rights abuses
- Geolocate and verify images and videos
- Track perpetrators across social platforms
- Report findings securely to legal and justice bodies

---

## 🛠️ Tool Guide Index

### 🔍 Reverse Image Search
- [Google Images](https://images.google.com)
- [Yandex Images](https://yandex.com/images)
- [TinEye](https://tineye.com)
- [RevEye Extension](https://chrome.google.com/webstore/detail/reveye-reverse-image-sear)

### 🧠 Facial Recognition
- [PimEyes](https://pimeyes.com/)
- [Social Links](https://www.sociallinks.io/)

### 🎭 Deepfake Detection
- [Deepware Scanner](https://www.deepware.ai/)
- [InVID Tools](https://www.invid-project.eu/tools/)
- [YouTube DataViewer](https://citizenevidence.amnestyusa.org/)

### 🌍 Geolocation (GEOINT)
- [Picarta.ai](https://www.picarta.ai)
- [Google Earth Pro](https://www.google.com/earth/versions/#earth-pro)
- [SunCalc](https://www.suncalc.org/)
- [Sentinel Hub](https://www.sentinel-hub.com/)

### 🧾 Metadata & Redaction
- [ExifTool](https://exiftool.org/)
- [Metapicz](https://metapicz.com/)
- [FFmpeg](https://ffmpeg.org/)
- [Exif Pilot](https://www.colorpilot.com/exif.html)

### 📱 Social Media Tracking
- [Twint](https://github.com/twintproject/twint)
- [Instaloader](https://instaloader.github.io/)
- [Check by Meedan](https://meedan.com/check/)
- [HateSonar](https://pypi.org/project/hatesonar/)

### 🔐 Privacy & Encryption
- [Tails OS](https://tails.boum.org/)
- [ProtonVPN](https://protonvpn.com/)
- [VeraCrypt](https://www.veracrypt.fr/en/Home.html)

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
| Organization      | Link                                           |
|------------------|------------------------------------------------|
| ICC              | https://www.icc-cpi.int/contact-us            |
| Bellingcat       | https://www.bellingcat.com/contact/           |
| Syrian Archive   | https://syrianarchive.org/en/submit           |

Anonymous submissions: [SecureDrop](https://securedrop.org/)

---

## 🧪 Sample Case Report: OSINT Verification Walkthrough

**Title:** Airstrike on Residential Area  
**Date of Incident:** March 15, 2022  
**Location:** Mariupol, Ukraine  
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

## 🤝 Contribute
- PRs welcome for new tools or case studies
- Translate content into other languages
- Submit anonymized real-world walkthroughs

---

## 📜 License
MIT — Always credit original sources and follow platform TOS

> This toolkit is a living resource. Maintain it as tools, conflicts, and laws evolve.

**Stay ethical. Stay anonymous. Stay accurate.** 🔍🌐

