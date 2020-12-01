#SingleInstance force
global toggle
#MaxThreadsPerHotkey 2

$Numpad2::
	ToolTip, "Apretando espacio"
	;Initialize random delays between 57 and 114 ms (arbitrary values, may be changed)
	random, delay, 40, 60
	toggle := !toggle
	if (toggle)
	while (toggle)
	{
		Send {Space} 
		Sleep, delay1
    }
	ToolTip
return

$Numpad1::
	ToolTip, "Apretando AD"
    random, delay1, 30, 40
    random, delay2, 30, 40
    random, delay3, 30, 40
    random, delay4, 30, 40
	toggle := !toggle
	if (toggle)
	while (toggle)
	{
		Send {a down} 
		Sleep, delay1
		Send {a up}
		Sleep, delay2
		Send {d down}
		Sleep, delay3
		Send {d up}
		Sleep, delay4
	}
	ToolTip
return

$|::
	Send {Click down}
	sleep, 440
	Send {Click up}
return

