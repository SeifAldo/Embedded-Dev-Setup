#!/usr/bin/env bash
set -e
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew update
brew install git cmake ninja openocd stlink dfu-util stm32flash python3 node golang openjdk
echo "✅ macOS setup complete!"

