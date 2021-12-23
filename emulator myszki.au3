global $sensivity = 12

; Press Esc to terminate script, Pause/Break to "pause"

Global $g_bPaused = False

HotKeySet("{PAUSE}", "HotKeyPressed")
HotKeySet("{F10}", "HotKeyPressed")
HotKeySet("{F9}", "HotKeyPressed")
HotKeySet("{F11}", "HotKeyPressed")
HotKeySet("{PRINTSCREEN}", "HotKeyPressed")
HotKeySet("{INSERT}", "HotKeyPressed")
HotKeySet("{F7}", "HotKeyPressed")
HotKeySet("{F8}", "HotKeyPressed")
HotKeySet("{NUMLOCK}", "HotKeyPressed")


While 1
    Sleep(100)
WEnd

Func HotKeyPressed()
    Switch @HotKeyPressed ; The last hotkey pressed.
        Case "{PAUSE}" ; String is the {PAUSE} hotkey.
            $g_bPaused = Not $g_bPaused
            While $g_bPaused
                Sleep(100)
                ToolTip('Script is "Paused"', 0, 0)
            WEnd
            ToolTip("")

        Case "{PRINTSCREEN}"
            MouseMoveUP()
		Case "{F10}"
            MouseMoveDOWN()
		Case "{F9}"
            MouseMoveLEFT()
		Case "{F11}"
            MouseMoveRIGHT()
		Case "{F7}"
            MouseSensivityDOWN()
		Case "{F8}"
            MouseSensivityUP()
		Case "{NUMLOCK}"
            MouseClickFast("left")
		Case "{INSERT}"
            MouseClickFast("right")

    EndSwitch
EndFunc   ;==>HotKeyPressed

func MouseClickFast($button)
	MouseClick($button)
	EndFunc

Func MouseSensivityUP()
	 $sensivity =  $sensivity + 1
EndFunc


Func MouseSensivityDOWN()
      $sensivity =  $sensivity - 1
EndFunc


Func MouseMoveLEFT()
     Local $Pos = MouseGetPos()
     MouseMove($Pos[0]- $sensivity,$Pos[1],0)
EndFunc


Func MouseMoveRIGHT()
     Local $Pos = MouseGetPos()
     MouseMove($Pos[0]+ $sensivity,$Pos[1],0)
EndFunc

Func MouseMoveUP()
     Local $Pos = MouseGetPos()
     MouseMove($Pos[0],$Pos[1]- $sensivity,0)
EndFunc

Func MouseMoveDOWN()
     Local $Pos = MouseGetPos()
     MouseMove($Pos[0],$Pos[1]+ $sensivity,0)
EndFunc



