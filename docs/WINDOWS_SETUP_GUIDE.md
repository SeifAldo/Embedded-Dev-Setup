# 🪟 Windows Embedded Development Environment Setup

This guide explains how to set up a full embedded systems development environment on **Windows 10** and **Windows 11** — covering compilers, debuggers, IDEs, and utilities for STM32 and PlatformIO development.

---

## ⚙️ 1. Update Windows and Install PowerShell 7

Run **Windows Update** first to ensure all packages are current.

Then install the latest **PowerShell 7**:
1. Visit [https://github.com/PowerShell/PowerShell](https://github.com/PowerShell/PowerShell)
2. Download and install the `.msi` package for Windows x64.
3. After installation, open PowerShell and check:
   ```powershell
   pwsh --version
🧩 2. Install Chocolatey (Package Manager)

Chocolatey automates software installation:

Set-ExecutionPolicy Bypass -Scope Process -Force; `
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


Then verify:

choco --version

🔧 3. Install Core Development Tools

Install compilers, build tools, and utilities:

choco install -y git cmake make python nodejs openjdk go wget curl 7zip


Restart PowerShell after installation.

⚙️ 4. Install ARM GCC Toolchain and Debug Utilities
choco install -y gcc-arm-embedded openocd stlink dfu-util


If STM32Flash isn’t available on Chocolatey, install it manually:

Download from: https://sourceforge.net/projects/stm32flash/

Extract it to C:\Tools\stm32flash\

Add that path to System Environment Variables.

💬 5. Install Serial Communication Tools
choco install -y putty teraterm


Or use CoolTerm (GUI-based serial monitor):
https://freeware.the-meiers.org/

🧰 6. Install PlatformIO (Firmware Build System)

PlatformIO can be installed in two ways:

A. Inside VS Code (Recommended)

Install Visual Studio Code

Open VS Code → Extensions → search for PlatformIO IDE → Install

B. Or via Python

pip install platformio

🧱 7. Install STM32CubeIDE

Download the Windows .exe installer from ST:
https://www.st.com/en/development-tools/stm32cubeide.html

Run the installer as Administrator.

After installation, confirm:

C:\ST\STM32CubeIDE_1.x.x\

🔐 8. Configure USB Drivers for STM32

Install the official ST-Link USB driver:

https://www.st.com/en/development-tools/stsw-link009.html

After installing, reconnect your STM32 board and confirm it appears in Device Manager under Universal Serial Bus devices.

🧠 9. Verify Installations

Run these commands in PowerShell to confirm setup:

arm-none-eabi-gcc --version
openocd --version
python --version
platformio --version
git --version

🚀 10. Automated Setup Script

You can run the entire installation automatically with:

cd .\windows\
powershell -ExecutionPolicy Bypass -File setup_windows.ps1

✅ 11. Development Ready

Your Windows system is now configured for embedded development with STM32, PlatformIO, and all essential debugging tools.

Author: Seif Eldin (SeifAldo)
📧 seifaldo.hassan@gmail.com

🌐 GitHub: SeifAldo
