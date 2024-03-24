Gui +LastFound +AlwaysOnTop
Gui Color, 000000
Gui Font, s12, Arial
Gui Add, Button, x25 y25 w100 h40 gStartButton, Start
Gui Add, Button, x135 y25 w100 h40 gPauseButton, Pause
Gui Add, Button, x245 y25 w100 h40 gStopButton, Stop
Gui Add, Button, x360 y25 w25 h25 gExitButton, X
Gui Show, x100 y100 h100 w400, My Script
return

StartButton:
End::
toggle := !toggle
While toggle {
    Send, {Alt down}{Tab}{Alt up}
    Sleep, 500
    Send, g
    Sleep, 5000
}
return

PauseButton:
toggle := !toggle
return

StopButton:
toggle := false
return

ExitButton:
ExitApp
return
