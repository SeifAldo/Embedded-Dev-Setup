![Embedded Dev Setup Banner](docs/assets/banner.png)

![Linux](https://img.shields.io/badge/Linux-Ubuntu-orange?logo=ubuntu)
![macOS](https://img.shields.io/badge/macOS-Sonoma-blue?logo=apple)
![Windows](https://img.shields.io/badge/Windows-11-blue?logo=windows)
![PlatformIO](https://img.shields.io/badge/PlatformIO-ready-brightgreen?logo=platformio)
![License](https://img.shields.io/badge/License-MIT-yellow?logo=open-source-initiative)

# Embedded Development Environment Setup

A cross-platform setup for Embedded Systems Development.
Supports Linux, macOS and Windows.

## Overview
This repository automates and documents the full setup process for an embedded development workstation — from a fresh OS install to a complete toolchain ready for firmware, debugging and testing.

## Supported Platforms
- Linux (Ubuntu/Debian)
- macOS
- Windows 10 / 11

## Quick Start
```bash
git clone git@github.com:SeifAldo/Embedded-Dev-Setup.git
cd Embedded-Dev-Setup
chmod +x scripts/setup_all.sh
./scripts/setup_all.sh
```

## Structure
```
Embedded-Dev-Setup/
├── docs/
│   ├── LINUX_SETUP_GUIDE.md
│   ├── MAC_SETUP_GUIDE.md
│   └── WINDOWS_SETUP_GUIDE.md
├── linux/
│   └── setup_linux.sh
├── macos/
│   └── setup_macos.sh
├── windows/
│   └── setup_windows.ps1
├── scripts/
│   └── setup_all.sh
├── tools/
├── tests/
└── README.md
```

## Author
**Seif Eldin Hassan (SeifAldo)**  
📧 seifaldo.hassan@gmail.com  
License: MIT
