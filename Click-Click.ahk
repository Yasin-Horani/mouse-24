#NoEnv
SendMode Event

*F24::
toggle := 0
while GetKeyState("F24","P")
{
    SendEvent {Blind}{LButton down}
    Sleep 20
    SendEvent {Blind}{LButton up}

    if (toggle = 0)
    {
        Sleep 150
        toggle := 1
    }
    else
    {
        Sleep 100
        toggle := 0
    }
}
return