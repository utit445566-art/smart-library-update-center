# Smart Library Update Center

ชุดเริ่มต้นสำหรับ Online Update ของ Smart Library

## ไฟล์ใน Repository

- `school/latest.json` — ช่องอัปเดตของ TPK Smart Library
- `distribution/latest.json` — ช่องอัปเดตของ Smart Library รุ่นแจก
- `docs/` — manifest และ SHA-256 สำหรับตรวจสอบ
- `SET_GITHUB_REPOSITORY.bat` — ช่วยใส่ GitHub username/repository ลงใน latest.json

## ขั้นตอนตั้งครั้งแรก

1. สร้าง Public Repository บน GitHub ชื่อ `smart-library-update-center`
2. ดับเบิลคลิก `SET_GITHUB_REPOSITORY.bat`
3. กรอก GitHub username/organization ของคุณ
4. อัปโหลดไฟล์และโฟลเดอร์ทั้งหมดในชุดนี้ขึ้น branch `main`
5. สร้าง GitHub Release tag `v4.5.0`
   - แนบไฟล์ `TPK_SmartLibrary_Update_4.5.0.zip`
6. สร้าง GitHub Release tag `v1.2.0`
   - แนบไฟล์ `SmartLibrary_Update_1.2.0.zip`
7. ใน Smart Library รุ่นโรงเรียน ใส่ Update Center URL:
   `https://raw.githubusercontent.com/<OWNER>/smart-library-update-center/main/school/latest.json`
8. ใน Smart Library รุ่นแจก ใส่:
   `https://raw.githubusercontent.com/<OWNER>/smart-library-update-center/main/distribution/latest.json`

## SHA-256 ของแพ็กเกจเริ่มต้น

- School 4.5.0:
  `17133704bbcb145b2f6c629b11adc079826ed908c3b53e2d79e74f1d2f27d2c1`
- Distribution 1.2.0:
  `8c3f6b9fdd8e7b874401feac77d0f44847ac604b5bed7d7019bc3e688991f16d`

## เวลามีเวอร์ชันใหม่

ไม่ต้องอัปโหลดฐานข้อมูลหรือโฟลเดอร์ข้อมูลของโรงเรียนขึ้น GitHub

ให้อัปโหลดเฉพาะ:
1. `SmartLibrary_Update_<version>.zip` ไปที่ GitHub Release
2. แก้ `latest.json` ให้เป็น version/package_url/sha256 ใหม่
3. Commit `latest.json`

เครื่อง Smart Library ทุกแห่งที่ผูก URL ไว้จะเห็นอัปเดตใหม่เมื่อกดตรวจสอบ
