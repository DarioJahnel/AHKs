#SingleInstance force
#IfWinActive, ahk_class POEWindowClass

x = 1293
y = 613

;5 filas 11 columnas

$2::
{
	;Initialize random delays between 57 and 114 ms (arbitrary values, may be changed)
	random, delay2, 35, 55
	random, delay3, 40, 50
	random, delay4, 33, 57
	random, delay5, 37, 45

	;send, 1 ;simulates the keypress of the 1 button. If you use another button, change it!

	;sleep, %delay2%
	send, 2 ;simulates the keypress of the 2 button. If you use another button, change it!

	sleep, %delay3%
	send, 3 ;simulates the keypress of the 3 button. If you use another button, change it!

	sleep, %delay4%
	send, 4 ;simulates the keypress of the 4 button. If you use another button, change it!

	sleep, %delay5%
	send, 5 ;simulates the keypress of the 5 button. If you use another button, change it!
}
return

; Ordenar stash
$+o::
{
primerX = %x%
primerY = %y%

Send, {Ctrl down}
Loop, 11
{
    Loop, 5
    {
    ;Si apreto "|" paro el script
    if GetKeyState("|","P")
    {
    Send, {Ctrl up}
    return
    }
    else 
    {MouseMove, primerX, primerY
    Send {click}
    sleep Random, 40,60
    primerY += 53
    }
    }

    primerY = %y%
    primerX += 53
}
Send, {Ctrl up}

    return
}

; Repetir clicks, crafteo
$+MButton::
{
while GetKeyState("MButton","P")
{
      Send +{click}
      sleep Random, 40,60
}
    return
}

^!r::Reload  ; Assign Ctrl-Alt-R as a hotkey to restart the script.