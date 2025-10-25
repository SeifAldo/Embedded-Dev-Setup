<#
PowerShell script for Windows
#>
winget install --id Git.Git -e --source winget
winget install --id Microsoft.VisualStudioCode -e --source winget
winget install --id ARM.GCC.ARM -e --source winget
winget install --id OpenOCD.OpenOCD -e --source winget
echo "✅ Windows setup complete!"

