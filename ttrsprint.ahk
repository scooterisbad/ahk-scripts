; Every instance of "\" (w/ or w/o quotes) is the sprint key
; Every instance of "e" (w/ or w/o quotes) is the forward key

#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 1

KeyDown := False

#If WinActive("Toontown Rewritten") or WinActive("Toontown Multicontroller")
    LShift::
        KeyState := GetKeyState("w")
        If (KeyDown = False) {
            If (KeyState = 1) {
                SendInput, {w up}
                Sleep, 5
                SendInput, {w down}
                Sleep, 5
                SendInput, {w up}
                Sleep, 5
                SendInput, {w down}
            }
            KeyDown := True
        }
    Return
    LShift Up::
        KeyState := GetKeyState("w")
        If (KeyDown = True) {
            If (KeyState = 1) {
                SendInput, {w up}
                Sleep, 5
                SendInput, {w down}
            }
            KeyDown := False
        }
    Return