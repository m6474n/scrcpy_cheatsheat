# ==========================================
# SETUP GUIDE — NEW WINDOWS SYSTEM
# ==========================================

# Prerequisites:
# 1. Install scrcpy and Android Platform Tools (ADB).
# 2. Ensure scrcpy.exe and adb.exe are available in PATH.
# 3. Enable USB debugging on your Android phone.
#
# Create/open the PowerShell profile:
#     notepad $PROFILE
#
# If the profile file or its parent directory doesn't exist:
#     New-Item -ItemType Directory -Force -Path (Split-Path $PROFILE)
#     New-Item -ItemType File -Force -Path $PROFILE
#     notepad $PROFILE
#
# Alternative: Create a profile automatically from PowerShell:
#     if (!(Test-Path $PROFILE)) {
#         New-Item -ItemType Directory -Force -Path (Split-Path $PROFILE)
#         New-Item -ItemType File -Force -Path $PROFILE
#     }
#
# Paste the shortcut functions into the profile and save.
#
# Allow local PowerShell profiles to run if blocked:
#     Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
#
# Reload the profile without restarting PowerShell:
#     . $PROFILE
#
# Verify installation:
#     scrcpy --version
#     adb version
#     adb devices
#
# Find the profile file location:
#     $PROFILE
#
# Update the Wi-Fi IP address in the scrwifi functions
# whenever the phone's IP address changes.
#
# NOTE:
# PowerShell profiles are specific to each Windows user.
# Copy this profile to the new system; it is not synced automatically.
# ==========================================