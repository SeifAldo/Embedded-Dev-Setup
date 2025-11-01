# 🪟 Embedded Development Environment Setup for Windows
Write-Host "🚀 Starting Embedded Development Environment Setup for Windows..." -ForegroundColor Cyan

# --- Check for Administrator privileges ---
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "❌ Please run PowerShell as Administrator!" -ForegroundColor Red
    exit
}

# --- Enable execution policy for scripts ---
Set-ExecutionPolicy Bypass -Scope Process -Force

# --- Install Chocolatey ---
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "📦 Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
} else {
    Write-Host "✅ Chocolatey is already installed."
}

# --- Update Chocolatey ---
choco upgrade chocolatey -y

# --- Install Essential Tools ---
choco install -y git cmake make ninja python openjdk nodejs golang wget curl

# --- ARM Toolchain & Debug Tools ---
choco install -y gcc-arm-embedded openocd stlink dfu-util

# --- Serial Communication Tools ---
choco install -y putty teraterm

# --- VS Code & PlatformIO ---
choco install -y vscode
Write-Host "⚙️ Installing PlatformIO..."
code --install-extension platformio.platformio-ide

# --- STM32CubeIDE (manual) ---
Write-Host "🧰 Please download and install STM32CubeIDE manually from:"
Write-Host "👉 https://www.st.com/en/development-tools/stm32cubeide.html"

# --- Final Message ---
Write-Host "✅ Windows Embedded Development Environment setup complete!" -ForegroundColor Green

