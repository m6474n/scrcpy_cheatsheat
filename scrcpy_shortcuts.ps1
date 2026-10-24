# ==========================================
# scrcpy - Android Screen Mirroring Shortcuts
# ==========================================


# Display PowerShell profile contents
function catprofile { Get-Content $PROFILE }

# Open PowerShell profile in Notepad
function editprofile { notepad $PROFILE }

# --- USB Mirroring ---

# Mirror screen normally
function mirror-screen { scrcpy.exe }

# Rotate screen 90 degrees
function mirror-horizontal { scrcpy.exe --orientation=90 }

# Flip screen vertically (top <-> bottom)
function mirror-flip { scrcpy.exe --orientation=flip0 }

# Rotate 90 degrees and flip
function mirror-flip-horizontal { scrcpy.exe --orientation=flip90 }


# --- USB Mirroring with Phone Screen OFF ---

# Mirror screen while turning off the physical phone display
function mirror-screen-off { scrcpy.exe --turn-screen-off }

# Rotate 90 degrees with phone screen off
function mirror-horizontal-off { scrcpy.exe --orientation=90 --turn-screen-off }

# Vertical flip with phone screen off
function mirror-flip-off { scrcpy.exe --orientation=flip0 --turn-screen-off }

# Rotate 90 degrees + flip, with phone screen off
function mirror-flip-horizontal-off { scrcpy.exe --orientation=flip90 --turn-screen-off }

# Fullscreen mirroring with phone screen off
function mirror-full-off { scrcpy.exe --fullscreen --turn-screen-off }


# --- Wi-Fi Connection ---

# Connect to Android over Wi-Fi (replace with your phone's IP)
function scrwifi-connect { adb connect 192.168.1.100:5555 }

# Disconnect Wi-Fi ADB connections
function scrwifi-disconnect { adb disconnect }

# Connect over Wi-Fi and mirror normally
function scrwifi { 
    adb connect 192.168.1.100:5555
    scrcpy.exe
}

# Connect over Wi-Fi and mirror with phone screen off
function scrwifi-off {
    adb connect 192.168.1.100:5555
    scrcpy.exe --turn-screen-off
}

# Connect over Wi-Fi, rotate 90 degrees, and turn phone screen off
function scrwifi-horizontal-off {
    adb connect 192.168.1.100:5555
    scrcpy.exe --orientation=90 --turn-screen-off
}

# Connect over Wi-Fi, flip + rotate 90 degrees, and turn phone screen off
function scrwifi-flip-off {
    adb connect 192.168.1.100:5555
    scrcpy.exe --orientation=flip90 --turn-screen-off
}

# List connected Android devices
function scrdevices { adb devices }