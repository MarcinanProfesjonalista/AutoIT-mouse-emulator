#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <MsgBoxConstants.au3>

; Press Esc to terminate script, Pause/Break to "pause"

Global $g_bPaused = False

HotKeySet("{-}", "HotKeyPressed")
HotKeySet("{=}", "HotKeyPressed")


While 1
    Sleep(100)
WEnd

Func HotKeyPressed()
    Switch @HotKeyPressed ; The last hotkey pressed.

        Case "{-}" ; String is the {ESC} hotkey.
            MouseWheel("down", 10)

        Case "{=}" ; String is the Shift-Alt-d hotkey.
            MouseWheel("up", 10)

    EndSwitch
EndFunc   ;==>HotKeyPressed
