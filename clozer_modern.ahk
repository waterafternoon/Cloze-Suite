^!]::
	Reload
	MsgBox flasshhhh!
Return


pythonahk(functionname)
	{
	clearkeys()
	ClipboardText = %Clipboard%
	send ^c
	Sleep 100

	Runwait, "python %A_WorkingDir%\clozerahk.py" %functionname% 1
	Sleep 50
	send ^v
	Clipboard = %ClipboardText%
	send {alt up}{shift up}{ctrl up}
	}
return

clearkeys()
	{
	send {alt up}{shift up}{ctrl up}{Numpad1 up}{Numpad2 up}{Numpad3 up}{Numpad4 up}{Numpad5 up}{Numpad6 up}{Numpad7 up}{Numpad8 up}{Numpad9 up}
	
	send {esc}
	}
return

^!Numpad8::
	pythonahk("autoc")
return