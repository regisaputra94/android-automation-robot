## ⚙️ Setup
### 1️⃣ Install Dependencies

Pastikan sudah terinstall:
1. Python 3
2. Node.js & Appium (npm install -g appium)
3. Android SDK (untuk emulator atau real device)

Lalu install library Python:
```bash
pip install -r requirements.txt
```

### 2️⃣ Jalankan Appium Server
```bash
appium
```
Pastikan server aktif di http://localhost:4723/wd/hub.

### 3️⃣ Jalankan Emulator / Hubungkan Device
Cek apakah device terbaca:
```bash
adb devices
```

## 🚀 Menjalankan Test

Jalankan semua test:
```bash
robot -d results tests/
```

Atau test tertentu:
```bash
robot -d results tests/login/login_test.robot
```

## 📂 Struktur Folder
```bash
mobile-automation-robot/
├── resources/
│   ├── keywords/
│   │   ├── base/              # Keyword dasar
│   │   └── pages/             # Page Object
│   └── variables/             # Config Android/iOS
├── tests/                     # Test cases
├── results/                   # Report hasil test di ignore di git
└── requirements.txt
```