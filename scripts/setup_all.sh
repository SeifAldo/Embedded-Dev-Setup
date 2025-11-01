#!/usr/bin/env bash
# ============================================
# 🧠 Universal Embedded Dev Setup Script
# Detects the OS and runs the proper setup
# ============================================

set -e

echo "🔍 Detecting your operating system..."

OS="$(uname -s)"

case "$OS" in
    Linux*)
        if [[ -f "/etc/os-release" ]]; then
            source /etc/os-release
            echo "🐧 Detected Linux: $NAME"
        fi
        bash ./linux/setup_linux.sh
        ;;
    Darwin*)
        echo "🍎 Detected macOS"
        bash ./macos/setup_macos.sh
        ;;
    MINGW*|MSYS*|CYGWIN*|Windows*)
        echo "🪟 Detected Windows (via Git Bash or PowerShell)"
        pwsh ./windows/setup_windows.ps1
        ;;
    *)
        echo "❌ Unsupported OS: $OS"
        exit 1
        ;;
esac

echo "✅ All setup scripts executed successfully!"

