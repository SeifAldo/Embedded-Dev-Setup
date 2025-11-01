# 🐧 Linux Embedded Development Environment Setup

This guide provides a full setup process for preparing a Linux system (Ubuntu, Debian, or derivatives) for embedded software development — including firmware tools, compilers, debuggers, and IDEs.

---

## ⚙️ 1. Update and Upgrade System

Before installation, make sure your system is up to date:

```bash
sudo apt update && sudo apt upgrade -y
🧩 2. Install Essential Build Tools

These are required for compiling, building, and managing code projects:

sudo apt install -y build-essential git curl wget cmake make ninja-build pkg-config python3 python3-pip openjdk-21-jdk nodejs npm golang

🔧 3. Install ARM Toolchain and Debug Utilities

Tools used for compiling and debugging embedded firmware:

sudo apt install -y gcc-arm-none-eabi binutils-arm-none-eabi gdb-multiarch openocd stlink-tools dfu-util stm32flash

💬 4. Serial Communication Tools

Used to interact with microcontrollers via UART or USB:

sudo apt install -y minicom screen lrzsz

⚙️ 5. Install PlatformIO (Firmware Build System)

PlatformIO provides a consistent build and upload environment:

python3 -m pip install --user platformio


If your system blocks pip installations, use this instead:

python3 -m pip install --break-system-packages platformio

🧰 6. Install STM32CubeIDE

Download and install the latest version manually from STMicroelectronics:

🔗 https://www.st.com/en/development-tools/stm32cubeide.html

After downloading:

chmod +x st-stm32cubeide_*.sh
sudo ./st-stm32cubeide_*.sh

🔐 7. Fix USB Permissions (Optional but Recommended)

Add your user to the dialout group to access serial ports without sudo:

sudo usermod -aG dialout $USER


Then reboot:

sudo reboot

🧠 8. Verify Installations

Run these commands to confirm everything works:

arm-none-eabi-gcc --version
openocd --version
stm32flash --version
platformio --version

🚀 9. Automated Setup

To perform the entire setup automatically, you can run the provided script:

chmod +x linux/setup_linux.sh
./linux/setup_linux.sh

✅ 10. Ready to Develop!

Your Linux system is now fully configured for embedded systems development — ready for C/C++, STM32, and PlatformIO projects.

Author: Seif Eldin (SeifAldo)
📧 seifaldo.hassan@gmail.com

🌐 GitHub: SeifAldo
