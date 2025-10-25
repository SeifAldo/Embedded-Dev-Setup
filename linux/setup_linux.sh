#!/usr/bin/env bash
set -e
apt update
apt install -y build-essential cmake ninja-build git curl wget unzip
apt install -y python3 python3-pip python3-venv
apt install -y gcc-arm-none-eabi binutils-arm-none-eabi gdb-multiarch
apt install -y openocd stlink-tools dfu-util stm32flash minicom picocom screen
echo "✅ Linux setup complete!"

