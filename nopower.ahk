; Not sure if this is legal or not ahahaaaaa
; c is the bind to be set, x is the normal in-game bind for throw

#SingleInstance, Force
SendMode, Input
SetTitleMatchMode, 1

#If WinActive("Toontown Rewritten") or WinActive("Multitoon Controller") or WinActive("Toontown Multicontroller")
    c::Send x