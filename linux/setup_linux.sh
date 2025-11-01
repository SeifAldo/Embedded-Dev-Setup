#!/usr/bin/env bash
# ===============================================
# 🐧 Linux Embedded Development Setup Script
# ===============================================

set -e

echo "🚀 Starting Embedded Development Environment Setup for Linux..."

# -----------------------------------------------
# Step 1: Update system and install essentials
# -----------------------------------------------
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y build-essential curl wget git cmake make ninja-build pkg-config \
    python3 python3-pip openjdk-21-jdk golang nodejs npm \
    gdb-multiarch minicom screen lrzsz unzip

# -----------------------------------------------
# Step 2: Install ARM Embedded Toolchain
# -----------------------------------------------
sudo apt install -y gcc-arm-none-eabi binutils-arm-none-eabi gdb-multiarch

# -----------------------------------------------
# Step 3: Install STM32 development tools
# -----------------------------------------------
sudo apt install -y openocd stlink-tools dfu-util stm32flash

# -----------------------------------------------
# Step 4: Install VS Code and PlatformIO
# -----------------------------------------------
if ! command -v code &> /dev/null; then
    echo "📦 Installing Visual Studio Code..."
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
    sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] \
    https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    sudo apt install -y apt-transport-https
    sudo apt update
    sudo apt install -y code
fi

echo "⚙️ Installing PlatformIO..."
pip install -U platformio

# -----------------------------------------------
# Step 5: Configure permissions
# -----------------------------------------------
sudo usermod -aG dialout $USER

# -----------------------------------------------
# Step 6: Verify installations
# -----------------------------------------------
echo "🔍 Verifying tool versions..."
arm-none-eabi-gcc --version | head -n 1
openocd --version | head -n 1
gdb-multiarch --version | head -n 1
code --version | head -n 1

echo "✅ Linux Embedded Development Setup Complete!"
echo "Please reboot your system to apply user group changes."

