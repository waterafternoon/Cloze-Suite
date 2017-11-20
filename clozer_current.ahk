prefix = ""
suffix = ""
altclipboard = ""

^!\::
	Reload
	MsgBox flasshhhh!
Return

!+^c::
;keys keep on getting stuck somwhere? insert this command at the end of any command to try to fix it.
	send {alt up}{shift up}{ctrl up}
    Sleep 1000
    Runwait, python "%A_WorkingDir%\clozerahk.py" test 1
Return

;keys keep on getting stuck somwhere? insert this command at the end of any command to try to fix it.
^!NumPad7::
	clearkeys()
	MsgBox ayy!
	send {alt up}{shift up}{ctrl up}
	Mouseclick, left, 500,500
	Send {Left}
Return

^!ScrollLock::
	global notepadpp
	notepadpp := !notepadpp
	MsgBox toggled, %notepadpp%
Return

pythonahk(functionname)
	{
	clearkeys()
	ClipboardText = %Clipboard%
	send ^c
	Sleep 100

	Runwait, python "%A_WorkingDir%\clozerahk.py" %functionname% 1
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

makecloze(number)
	{
	BlockInput on
	SetKeyDelay, 40
	clearkeys()
	Sleep 40
	
	ClipboardText = %Clipboard%
	Sleep 20
	
	send ^x
	Clipboard := "{{" . "c" . number . "::" . Clipboard . "}}"
	Sleep 20
	send ^v 
	
	
	Clipboard = %ClipboardText%
	clearkeys()
	Sleep 40
	Blockinput off
	
	}
return

^!NumPad1::
	makecloze(1)
return

^!NumPad2::
	makecloze(2)
return

^!NumPad3::
	makecloze(3)
return

^!NumPad4::
	makecloze(4)
return

^!NumPad5::
	makecloze(5)
return

^!NumPad6::
	makecloze(6)
return

^!NumPad9::
	InputBox, clozenumber, Cloze Number
	makecloze(clozenumber)
return

^!NumpadDiv::
	pythonahk("splitbypunct")
return

!NumpadDiv::
	pythonahk("splitsentences")
return

^!Numpad8::
	pythonahk("autoc")
return

!Numpad8::
	clearkeys()
	Sleep 100
	Runwait, python "%A_WorkingDir%\clozerahk.py" autoc 1 
	Sleep 100
	send {alt up}{shift up}{ctrl up}
	send {esc}
return

^!NumPadAdd::
	pythonahk("despace")
return

^!NumpadMult::
	send, <br> <img src="
	send ^v
	send, " />
	
return

^!NumPad0::
	Setkeydelay 50
	;adds your preamble
	Sleep 40
	Send ^v
	ClipboardText = %Clipboard%  ;remove formatting
	Send {space}
	Send {Shift down}{Right 3}{Shift up}^c
	StringLower, Clipboard, Clipboard
	Send ^v

	Clipboard = %ClipboardText%
	;Send {Control down}{Shift down}{Left}{Control up}{Shift up}{Left}{Space}

	send {alt up}{shift up}{ctrl up}
return

^!Up::
	Sleep 75
	ClipboardText = %Clipboard% 	
	
	Send ^c
	StringUpper, Clipboard, Clipboard
	if (Clipboard == ",")
		Clipboard = .

	Send ^v

	Clipboard = %ClipboardText%
return

^!Down::
	Sleep 75
	ClipboardText = %Clipboard% 	
	
	Send ^c
	StringLower, Clipboard, Clipboard
	
	if (Clipboard == ".")
		Clipboard = ,
	Send ^v

	Clipboard = %ClipboardText%
return

^!c::
	global altclipboard
	ClipboardText = %Clipboard%
	sleep 20
	
	send ^c
	altclipboard = %Clipboard%
	
	Clipboard := ClipboardText
return

^!v::
	global altclipboard
	ClipboardText = %Clipboard%
	Clipboard := altclipboard

	sleep 20
	send ^v
	
	Clipboard := ClipboardText
return

^!Right::
	sendraw, ####
return

!Right::
	sendraw, !!!!
	clearkeys()
return

!Left::
	sendraw, :
	clearkeys()
return

NumPadEnter::
	send {esc 2}
return