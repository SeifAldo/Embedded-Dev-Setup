#!/bin/bash

set -e

echo "🔧 Starting Embedded Development Environment Setup for macOS..."

# Update Homebrew
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update

# Core tools
brew install \
    git \
    cmake \
    make \
    ninja \
    python3 \
    openjdk@21 \
    go \
    node \
    gdb \
    openocd \
    dfu-util \
    minicom \
    screen \
    pkg-config \
    wget \
    unzip

echo "✅ Core development tools installed successfully!"

# ARM toolchain
brew install --cask gcc-arm-embedded

# PlatformIO
pip3 install -U platformio

# Visual Studio Code
if ! command -v code &> /dev/null; then
    brew install --cask visual-studio-code
fi

# STM32CubeIDE
mkdir -p ~/Tools && cd ~/Tools
if [ ! -f stm32cubeide-latest.sh ]; then
    echo "Please manually download STM32CubeIDE installer for macOS to ~/Tools"
    echo "Then run the installer manually."
fi

echo "✅ macOS embedded development environment setup completed successfully!"

