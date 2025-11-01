#!/bin/bash

echo "🍏 Starting Embedded Development Environment Setup for macOS..."

# --- Check for Homebrew ---
if ! command -v brew &> /dev/null; then
    echo "📦 Homebrew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✅ Homebrew is already installed."
fi

# --- Update Homebrew ---
brew update

# --- Install Essential Tools ---
brew install git cmake make ninja python3 openjdk node npm go wget curl

# --- ARM Toolchain ---
brew install arm-none-eabi-gcc openocd stlink dfu-util

# --- Serial & Debug Tools ---
brew install minicom screen lrzsz

# --- PlatformIO (via pipx) ---
if ! command -v pipx &> /dev/null; then
    brew install pipx
    pipx ensurepath
fi

pipx install platformio

# --- STM32CubeIDE (manual installation link) ---
echo "🧰 STM32CubeIDE must be installed manually from STMicroelectronics:"
echo "👉 https://www.st.com/en/development-tools/stm32cubeide.html"

# --- Finish ---
echo "✅ macOS Embedded Development Environment setup complete!"

