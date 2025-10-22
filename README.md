# 🖱️ Tablet Control for PC

**Control your Android tablet from your PC with just Alt+Tab!**

A simple, one-click solution to use your PC's keyboard and mouse to control your Android tablet. No complicated setup, no virtual machines - just plug in and go.

## ✨ Features

- 🖱️ **Mouse Control** - Use your PC mouse to navigate Android
- 📋 **Copy/Paste** - Seamlessly share clipboard between PC and tablet
- ⌨️ **Alt+Tab Integration** - Switch between PC and tablet like switching windows
- 🚀 **One-Click Launch** - Double-click and you're ready to go
- 🔄 **Auto-Cleanup** - Closes cleanly when you exit the script

## 🎯 Why Use This?

Have you ever wanted to quickly type something on your tablet using your full keyboard? Or control your tablet without constantly reaching for it? This script makes it seamless - your tablet becomes just another window on your PC.

Perfect for:
- Testing Android apps while developing on PC
- Using tablet apps with a proper keyboard
- Quick file transfers via copy/paste
- Drawing/note-taking apps with precise mouse control

## 📋 Requirements

Before you start, you'll need:

1. **Windows PC** (Windows 10/11)
2. **AutoHotkey v2.0+** - [Download here](https://www.autohotkey.com/)
3. **scrcpy** - [Download here](https://github.com/Genymobile/scrcpy/releases)
4. **Android tablet** with USB debugging enabled (Android 9+)
5. **USB cable** to connect tablet to PC

## 🚀 Quick Start

### Step 1: Install Prerequisites

**Install AutoHotkey v2:**
1. Download from https://www.autohotkey.com/
2. Run the installer
3. Make sure you get **version 2.0 or higher** (not v1.1)

**Install scrcpy:**
1. Download the latest release from https://github.com/Genymobile/scrcpy/releases
2. Extract the ZIP file to `C:\scrcpy\` (or anywhere you prefer)
3. You should have `C:\scrcpy\scrcpy.exe` as the final path

### Step 2: Enable USB Debugging on Your Tablet

1. Go to **Settings** → **About tablet**
2. Tap **Build number** 7 times (you'll see "You are now a developer!")
3. Go back to **Settings** → **Developer options**
4. Enable **USB debugging**
5. Connect your tablet to PC via USB
6. Accept the "Allow USB debugging" popup on your tablet

### Step 3: Download and Configure the Script

1. Download `TabletControl.ahk` from this repository
2. Right-click the file → "Edit Script"
3. Change line 4 if your scrcpy is in a different location:
   ```autohotkey
   scrcpyPath := "C:\scrcpy\scrcpy.exe"
   ```
4. Save the file

### Step 4: Run It!

1. **Double-click** `TabletControl.ahk`
2. A small scrcpy window will appear showing your tablet screen
3. **Alt+Tab** to the scrcpy window - now your mouse/keyboard control the tablet!
4. **Alt+Tab** back - you're controlling your PC again

That's it! 🎉

## 🎮 How to Use

- **Switch to tablet**: Alt+Tab to the scrcpy window
- **Switch to PC**: Alt+Tab away from scrcpy window
- **Copy/Paste**: Copy on PC (Ctrl+C), switch to tablet, paste in any Android app (Ctrl+V)
- **Stop the script**: Right-click the AutoHotkey icon in system tray → Exit

## ⚙️ Advanced Configuration

### Change scrcpy Options

Edit the script's `cmd` line (around line 18) to customize scrcpy behavior:

```autohotkey
cmd := scrcpyPath . " --no-playback --keyboard=sdk --mouse=uhid"
```

Useful options:
- `--max-size=1920` - Limit screen resolution
- `--bit-rate=8M` - Adjust video quality
- `--stay-awake` - Keep screen on while connected

See [scrcpy documentation](https://github.com/Genymobile/scrcpy) for all options.

### Run on Windows Startup

1. Press `Win+R` and type `shell:startup`
2. Create a shortcut to `TabletControl.ahk` in that folder
3. Script will auto-launch when Windows starts

## 🐛 Troubleshooting

**"scrcpy not found" error:**
- Check that scrcpy.exe is at the path specified in the script (line 4)
- Make sure you extracted scrcpy completely, not just the exe

**Tablet not detected:**
- Make sure USB debugging is enabled
- Try a different USB cable or port
- Run `adb devices` in Command Prompt to verify connection

**Keyboard typing doesn't work:**
- This is a known limitation with scrcpy's SDK mode
- Copy/paste will still work perfectly
- For full keyboard support, you'd need to use `--keyboard=uhid` but it may be choppy

**Mouse is laggy:**
- Try a USB 3.0 port instead of 2.0
- Reduce scrcpy quality with `--max-size=1280 --bit-rate=4M`
- Disable power saving for USB in tablet's Developer Options

**Script won't start:**
- Make sure you have AutoHotkey **v2.0+** (not v1.1)
- Right-click the script → "Run Script"

## 📝 License

MIT License - feel free to modify and share!

## 🤝 Contributing

Found a bug? Have a feature idea? Open an issue or submit a pull request!

## ⭐ Credits

- Built with [AutoHotkey v2](https://www.autohotkey.com/)
- Powered by [scrcpy](https://github.com/Genymobile/scrcpy) by Genymobile
- Created because I couldn't find anything else that did this simply!

---

**Like this project? Give it a ⭐ to help others find it!**
