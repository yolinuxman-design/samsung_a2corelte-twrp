
# Samsung Galaxy A2 Core (a2corelte) – TWRP Device Tree

<p align="center">
  <img src="https://img.shields.io/badge/TWRP-3.7.0-blue?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Android-8.1_Oreo-orange?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Status-UNOFFICIAL-red?style=for-the-badge"/>
</p>

**Unofficial TWRP 3.7.0 device tree for the Samsung Galaxy A2 Core (a2corelte).**

This repository contains the device tree used to build **Team Win Recovery Project (TWRP) 3.7.0** for the **Samsung Galaxy A2 Core** running **Android 8.1 Oreo**.

---

## 📱 Device Information

| Property | Value |
|----------|-------|
| **Device** | Samsung Galaxy A2 Core |
| **Codename** | `a2corelte` |
| **Models** | SM-A260F / SM-A260F/DS / SM-A260G / SM-A260G/DS |
| **Recovery** | TWRP 3.7.0 |
| **Android Base** | 8.1 Oreo |
| **Status** | Unofficial |

---

## 📥 Downloads

- **Recovery:** [Telegram Release](https://t.me/a2corelte_discussion/1757)
- **Flashing Guide:** [Telegram Guide](https://t.me/a2corelte_discussion/1940)

---

## ✅ Working Features

- [x] Data Decryption
- [x] Touchscreen
- [x] Flashing ZIPs and Images
- [x] ADB Support
- [x] General Recovery Functionality

---

## ⚠️ Known Issues

| Feature | Status |
|---------|--------|
| **SD Card** | Not working *(Use USB OTG for now)* |
| **MTP** | Not working *(Use `adb push` and `adb pull` as a workaround)* |

If you discover additional issues, please report them with recovery logs.

---

## 🔧 Flashing Instructions

> **Flash at your own risk.**

1. Boot the device into **Download Mode**.
2. Open **Odin** on your PC.
3. Load `TWRP.tar` into the **AP** slot.
4. Flash the recovery.
5. **Immediately boot into Recovery** after flashing.
6. Follow the complete flashing guide before installing custom software.

---

## 📝 Changelog

### TWRP 3.7.0 (Android 8.1)

- 🔓 Working Data Decryption
- 🖐️ Fixed Touchscreen Support
- ✅ Flashing Functionality Working
- ⚙️ Various under-the-hood improvements

---

## 🛠️ Build Information

| Component | Value |
|-----------|-------|
| **Recovery** | TWRP 3.7.0 |
| **Platform** | Samsung Exynos 7870 |
| **Architecture** | ARM64 |
| **Android Base** | 8.1 Oreo |

---

## 👏 Credits

- **Rabi (@s66_36_29)** — Device Tree Maintainer & TWRP Porter  
  GitHub: https://github.com/yolinuxman-design
- **Faisal Ahamed (@faisalahamed01)** — Testing
- **Team Win Recovery Project (TWRP)**
- **OmniROM**
- **Samsung Open Source Release Center**
- **Android Open Source Project (AOSP)**

---

<p align="center">
  Made with ❤️ by <b>Rabi (yolinuxman-design)</b> for the Samsung Galaxy A2 Core community.
</p>

