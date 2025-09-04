#NoEnv
#SingleInstance Force
; ================================================================================
; TT-copy-paste Lite Script v.2
; by Aleksandrs M. Orrin (aka r.n. Aleksander Mamajevs)
; ================================================================================
; Basic settings for reliability
SendMode Input
SetWorkingDir, %A_ScriptDir%
; ================================================================================
; DESCRIPTION:
; Minimalist AutoHotkey script for fast copy and paste operations.
; Uses only the top row of the keyboard, completely eliminating the need
; for bottom modifier keys (Ctrl, Alt, Shift).
;
; ORIGIN STORY:
; The script was born from necessity — juice spilled on a keyboard once
; disabled the bottom modifier keys. This accident led to a discovery:
; you can work faster and more comfortably using only Tab and the top row
; of keys. Especially effective in darkness or when fatigued.
;
; PHILOSOPHY:
; • Top row of keyboard — the most accessible zone
; • Tab — the only modifier you need
; • Minimum keys — maximum efficiency
; • Intuitiveness over functionality
;
; ================================================================================
; HOTKEYS:
; ================================================================================
;
; CORE OPERATIONS:
; Tab + 1     → Copy                | Ta-n (oNe)
; Tab + 2     → Paste               | Ta-di (Duo)
; Tab + 4     → Select All          | Ta-La (aLL)
; Tab + S     → Enter (new line)
; Tab + D     → Enter (alternative)
;
; SCRIPT CONTROL:
; ScrollLock              → Suspend/Resume script
; Ctrl+Alt+Shift+Win+F12  → Emergency exit
;
; ================================================================================
; MNEMONICS:
; ================================================================================
; Remember the simple mantra: "Ta-n, Ta-di, Ta-La"
; • Ta-n  = Tab+1 = Copy (one)
; • Ta-di = Tab+2 = Paste (duo/double)
; • Ta-La = Tab+4 = Select All (all)
;
; ================================================================================
; APPLICATIONS:
; ================================================================================
; • Working in darkness (evening/night)
; • Quick copying between windows
; • Minimal finger strain
; • Perfect for people with limited mobility
; • Emergency situations (smoke, poor visibility)
; • Space stations (working in gloves/zero gravity)
;
; ================================================================================
; TECHNICAL DETAILS:
; ================================================================================
; • Quick Tab press works normally
; • Holding Tab activates command mode
; • Alt+Tab temporarily unavailable (use ScrollLock to pause)
; • Works equally well with text and files
;
; ================================================================================
; SYSTEM REQUIREMENTS:
; ================================================================================
; • Windows 7/8/10/11
; • AutoHotkey v1.1+ or v2.0+
; • Script execution permissions
;
; ================================================================================
; LICENSE:
; ================================================================================
; Free to use and modify
; Preserve authorship when distributing
;
; ================================================================================
; CONTACT:
; ================================================================================
; GitHub: https://github.com/alexanderM23/TT-copy-paste-Lite-script
; 
; ================================================================================
; VERSION & DATE:
; ================================================================================
; Version: 2.0 Lite
; Created: 2022
; Last Updated: 2025-09-04
;
; ================================================================================
; CODE BEGINS BELOW
; ================================================================================
#IfWinActive
Tab & 1::Send ^{c}						; Tab + Top1						Copy to Clipboard (Send: Ctrl + C keys)
Tab & 2::Send ^{v}						; Tab + Top2						Paste from Clipboard (Send: Ctrl + V keys)
Tab & 4::Send ^{a}						; Tab + Top4						Select All (Send: Ctrl + A keys)
Tab & s::Send {Enter}					; Tab + S								Send: Enter key
Tab & d::Send {Enter}					; Tab + D								Send: Enter key
+Tab::+Tab										; Shift + Tab						Send: Shift + Tab keys
return

; ================================================================================
; CLOSE PROTECTION - "Safety Net" Feature
; ================================================================================
; Prevents accidental program closure during high-speed work
; Alt+F4 and F4 are redirected to harmless F11 (fullscreen toggle)
; 
; WHY: When working fast with Tab combinations, it's easy to slip and hit Alt+F4
; This saves you from losing unsaved work due to accidental window closure
; ================================================================================
!F4::F11   ; Alt+F4 → F11 (close protection)
F4::F11    ; F4 → F11 (extra safety)
return

^!+#F12::ExitApp							; press CTRL + ALT + SHIFT + WIN + F12 keys for quick script Exit
End::Suspend, Toggle					; press End key for Suspend Toggle
return

Tab::
Send {Tab}										; Send: Tab key
return
