# 🪟 Windows Embedded Dev Setup Script
# Run as Administrator

Write-Host "🚀 Starting Windows Embedded Development Environment Setup..." -ForegroundColor Cyan

# Enable Developer Mode
Write-Host "⚙️ Enabling Developer Mode..."
Start-Process powershell -Verb RunAs -ArgumentList 'Set-ExecutionPolicy Bypass -Scope Process -Force'
Start-Process powershell -Verb RunAs -ArgumentList 'Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" -Name "AllowDevelopmentWithoutDevLicense" -Value 1'

# Install Chocolatey
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "🍫 Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install essential tools
Write-Host "📦 Installing essential development tools..."
choco install -y git vscode cmake make mingw golang python openjdk nodejs gradle

# Install Embedded tools
Write-Host "🔧 Installing Embedded toolchain..."
choco install -y arm-none-eabi-gcc dfu-util openocd stm32cubemx

# Install Visual Studio Code extensions (for PlatformIO + STM32)
code --install-extension platformio.platformio-ide
code --install-extension ms-vscode.cpptools
code --install-extension ms-python.python

Write-Host "✅ Setup complete! Please restart your terminal."

