#!/bin/bash

set -e

echo "🔧 Starting Embedded Development Environment Setup for Linux..."

sudo apt update && sudo apt upgrade -y

sudo apt install -y \
    build-essential \
    git \
    curl \
    wget \
    cmake \
    make \
    ninja-build \
    python3 \
    python3-pip \
    openjdk-21-jdk \
    golang \
    nodejs \
    npm \
    gdb-multiarch \
    openocd \
    stlink-tools \
    dfu-util \
    stm32flash \
    minicom \
    screen \
    lrzsz \
    unzip \
    pkg-config

echo "✅ Base development tools installed successfully!"

sudo usermod -aG dialout $USER

echo "⚙️ Setting up ARM GCC Toolchain..."
sudo apt install -y gcc-arm-none-eabi binutils-arm-none-eabi gdb-arm-none-eabi

echo "⚙️ Installing PlatformIO CLI..."
pip install -U platformio

echo "⚙️ Installing Visual Studio Code..."
if ! command -v code &> /dev/null; then
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
    sudo install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/
    sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    sudo apt update
    sudo apt install -y code
fi

echo "⚙️ Installing STM32CubeIDE..."
mkdir -p ~/Tools && cd ~/Tools
if [ ! -f stm32cubeide-latest.sh ]; then
    echo "Please manually download STM32CubeIDE .sh installer into ~/Tools"
    echo "Then run: chmod +x stm32cubeide*.sh && ./stm32cubeide*.sh"
fi

echo "✅ Linux embedded development environment setup completed successfully!"

