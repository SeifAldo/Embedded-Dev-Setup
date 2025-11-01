# 🍎 macOS Embedded Development Environment Setup

This guide explains how to prepare macOS for embedded systems development — including STM32, PlatformIO, and related toolchains.

---

## ⚙️ 1. Update macOS and Install Xcode Tools

First, make sure the system and developer tools are ready:

```bash
softwareupdate --all --install --force
xcode-select --install
🧩 2. Install Homebrew (Package Manager)

Homebrew is essential for managing development tools:

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


Then verify installation:

brew --version

🔧 3. Install Core Development Tools

These include compilers, build tools, and version control:

brew install git cmake make ninja python3 pipx node npm openjdk go wget curl

⚙️ 4. Install ARM GCC Toolchain and Debug Utilities

ARM compiler and flashing/debugging tools for STM32 development:

brew install arm-none-eabi-gcc open-ocd stlink dfu-util stm32flash

💬 5. Install Serial Communication Tools

Tools to monitor and interact with serial ports:

brew install minicom screen lrzsz

🧰 6. Install PlatformIO (Firmware Build System)

PlatformIO provides a universal embedded development environment:

pipx install platformio


If pipx isn’t installed, run:

python3 -m pip install --user pipx
python3 -m pipx ensurepath

🧱 7. Install STM32CubeIDE

Download the macOS version from STMicroelectronics:

🔗 https://www.st.com/en/development-tools/stm32cubeide.html

After downloading the .dmg file:

Double-click to open.

Drag STM32CubeIDE.app into your Applications folder.

🔐 8. Fix USB Access Permissions

Some macOS versions require permission for USB serial ports.
Grant access by going to:

System Settings → Privacy & Security → Full Disk Access
Then add your terminal (e.g. iTerm or Terminal.app).

🧠 9. Verify Installations

Check that everything is installed correctly:

arm-none-eabi-gcc --version
openocd --version
stm32flash --version
platformio --version

🚀 10. Automated Setup Script

You can automate everything with the project’s setup script:

chmod +x macos/setup_macos.sh
./macos/setup_macos.sh

✅ 11. Development Ready

Your macOS machine is now ready for embedded development — supporting STM32, PlatformIO, and other firmware platforms.

Author: Seif Eldin (SeifAldo)
📧 seifaldo.hassan@gmail.com

🌐 GitHub: SeifAldo
