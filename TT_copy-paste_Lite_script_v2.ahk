#NoEnv
#SingleInstance Force
/*
TT copy-paste Lite script V.2 (Version 2) - or - '2 percent of power left' survival helper method for Autohotkey,  
by Aleksandr Mamajevs
/////////////////////////////////////////////////
If your power is down (<2%), this scritpt might help...
/////////////////////////////////////////////////
This Autohotkey scritpt allows you to copy and paste a way more easier and faster, 
as well as other operations.
The main idea is:
You just need to hold a Tab key, never release it, when you are copying anything. 
It should  work perfectly for both - for text, and for files, too.

The main hotkeys are:

Tab + Top1 - for Copy;
Tab + Top2 - for Paste;

Tab + Top4 - for Select All;

Tab + S - for Enter;
Tab + D - for Enter, too;

Shift + Tab	- just in case, if Tab itself had any glitches

End - for Suspend toggle

CTRL + ALT + SHIFT + WIN + F12 - for quick script Exit

*/
;START OF CONFIG SECTION
#MaxHotkeysPerInterval 500
; #NoTrayIcon
#KeyHistory 0
SetBatchLines -1
ListLines, Off
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed. Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, %A_ScriptDir% ; Ensures a consistent starting directory.
; SplitPath, A_ScriptName, , , , MyScriptName ; store the script file name (without extension) in MyScriptName
; DetectHiddenWindows,On
; SetWinDelay, -1 ; Remove short delay done automatically after every windowing command except IfWinActive and IfWinExist
; SetKeyDelay, -1, -1 ; Remove short delay done automatically after every keystroke sent by Send or ControlSend
; SetMouseDelay,-1 ; Remove short delay done automatically after Click and MouseMove/Click/Drag
; MaxThreadsPerHotkey,1 ; no re-entrant hotkey handling
; #Warn  ; Enable warnings to assist with detecting common errors.
; Hook hotkeys are smart enough to ignore such keystrokes.
; #UseHook

;END OF CONFIG SECTION

;This is needed or key presses would faulty send their natural
;actions. Like NumPadDiv would send sometimes "/" to the
;screen.
; #InstallKeybdHook

Temp = 0
Temp2 = 0


#UseHook, On   ; in case if a key would send command
				; as "itself". It works as prefix $, button
				; just for all that keys, that are lower in the list.
				
#IfWinActive
Tab & 1::Send ^{c}						; Tab + Top1							Copy to Clipboard (Send: Ctrl + C keys)
Tab & 2::Send ^{v}						; Tab + Top2							Paste from Clipboard (Send: Ctrl + V keys)
Tab & 4::Send ^{a}						; Tab + Top4							Select All (Send: Ctrl + A keys)
Tab & s::Send {Enter}					; Tab + S								Send: Enter key
Tab & d::Send {Enter}					; Tab + D								Send: Enter key
+Tab::+Tab								; Shift + Tab							Send: Shift + Tab keys (just in case, if Tab had any glitches)
return

^!+#F12::ExitApp ; press CTRL + ALT + SHIFT + WIN + F12 keys for quick script Exit
End::Suspend, Toggle ; press End key for Suspend Toggle
return
;~

Tab::
	Send {Tab} ; Send: Tab key
	return
