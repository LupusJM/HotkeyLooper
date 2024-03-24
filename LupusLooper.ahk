#NoEnv
#Warn
SendMode Input

Gui, Add, Button, w100 h30 gStart, Start
Gui, Add, Button, w100 h30 gStop, Stop
Gui, Show, w200 h100, AutoHotkey GUI

return

Start:
GuiControl, Disable, Start
Loop
{
  Send, g
  Sleep, 5000
  If GetKeyState("Esc", "P")
    break
}
GuiControl, Enable, Start
return

Stop:
GuiEscape:
ExitApp