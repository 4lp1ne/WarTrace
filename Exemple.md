# 🕵️‍♂️ Fake OSINT Case Study: *"Soldier in Uniform Near Burning Building"*

![326627f2-024b-4991-90de-8ee3e2fa85a6](https://github.com/user-attachments/assets/46084fd8-3f33-4cec-aadf-db240addddc5)


## 📌 Scenario
A viral image is circulating online showing a **masked soldier** standing near a **burning building**, allegedly captured during a **war crime incident**.

**Objectives:**
- ✅ Verify if the image is real (not a deepfake)
- ✅ Determine where and when it was taken
- ✅ Attempt to identify the person
- ✅ Extract metadata or contextual clues
- ✅ Report securely to trusted organizations

---

## 🔍 Step 1: Reverse Image Search

**Tools Used:**
- Google Images  
- Yandex  
- RevEye  

We upload the image to **Yandex** and **TinEye**.  
➜ **Results:**  
- Found matches on an **obscure Telegram channel** (posted 2 hours earlier)  
- Also discovered a similar image on a **military forum** dated last year (possibly reused or out of context)

---

## 🧠 Step 2: Deepfake Detection

**Tools Used:**
- InVID  
- Deepware Scanner  

- Ran image through **InVID** → no signs of manipulation  
- Extracted video keyframes and scanned using **Deepware** → clean  

➜ **Conclusion:** Image appears **authentic**, not AI-generated.

---

## 🛰️ Step 3: Geolocation

**Tools Used:**
- Picarta.ai  
- Google Earth Pro  
- SunCalc  
- Sentinel Hub  
- **Geosint** (custom tool)  

- Analyzed background buildings with **Geosint**  
- Cross-referenced with **Sentinel Hub satellite imagery**  
- Used **SunCalc** to align **shadows and sun direction**  

➜ **Result:** Location pinpointed to outskirts of **[FakeTown], [FakeCountry]**.

---

## 🕵️ Step 4: Facial Recognition

**Tools Used:**
- PimEyes  
- Social Links  

- Ran partial facial image through **PimEyes**  
- Found match with a **Facebook profile** linked to a battalion  
- Confirmed by metadata and location tags on social content  

➜ **Possible ID match** established via public social content.

---

## 🗣️ Step 5: Social Media OSINT

**Tools Used:**
- Twint  
- Instaloader  
- TweetScraper  
- Check (by Meedan)  

- Used **Twint** to pull public tweets around the suspected area & date  
- Found multiple **eyewitness videos** posted by locals confirming explosions  
- **Instaloader** captured IG posts of similar events

➜ Contextual confirmation of **events and location** from social sources.

---

## 🔎 Step 6: Metadata Extraction

**Tools Used:**
- ExifTool  
- FFmpeg  

- Downloaded original upload from Telegram  
- Ran it through **ExifTool**  

➜ Found:
- Timestamp: consistent with claimed event  
- GPS coordinates embedded (not redacted)  
- Camera model: Android-based smartphone  

---

## 🌐 Step 7: News Monitoring

**Tools Used:**
- GDELT Project  
- NewsAPI  

- Queried **NewsAPI** and cross-checked with **GDELT** database  
- Matched reports of **building fires** and **military activity** in same region on same day  

➜ Verified alignment with **independent media reports**.

---

## 🛡️ Step 8: Secure Reporting

**Tools Used:**
- Bellingcat  
- Syrian Archive  
- ICC  
- SecureDrop  

- Compiled **evidence bundle** (blurred images, GPS, metadata, links)  
- Sent securely via **SecureDrop** to **Bellingcat** and **ICC**  
- Stored in **Syrian Archive** for future investigation

---

## ✅ Final Conclusion

Using freely available OSINT tools and responsible practices:

- ✅ **Confirmed image authenticity**  
- ✅ **Verified time and location**  
- ✅ **Identified possible individual** involved  
- ✅ **Matched event to news and social activity**  
- ✅ **Submitted securely** to investigative organizations

---

> 🧠 **Reminder:** This is a fictional case meant for educational and ethical purposes only. All tools used are legal and publicly available. Always ensure you comply with local laws and guidelines when conducting any OSINT activities.

