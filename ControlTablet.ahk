#Requires AutoHotkey v2.0

; === CONFIG ===
scrcpyPath := "C:\scrcpy\scrcpy.exe" ; <-- adjust if needed

global gScrcpyPid := 0

TraySetIcon("shell32.dll", 44)
OnExit(ExitCleanup)

; Auto-launch scrcpy on startup
if !FileExist(scrcpyPath) {
    MsgBox("scrcpy not found at:`n" . scrcpyPath . "`nEdit the script to fix the path.", "ControlTablet", "Icon!")
    ExitApp
}

; Start scrcpy automatically
cmd := scrcpyPath . " --no-playback --keyboard=sdk --mouse=uhid"
gScrcpyPid := Run(cmd)
TrayTip("✅ Tablet Control Active - Keyboard/mouse now control the tablet.")

; Keep script running in background
Persistent

; Cleanup when script exits
ExitCleanup(*) {
    global gScrcpyPid
    if (gScrcpyPid && ProcessExist(gScrcpyPid)) {
        ProcessClose(gScrcpyPid)
    }
}
