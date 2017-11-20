!+^c::
;keys keep on getting stuck somwhere? insert this command at the end of any command to try to fix it.
	send {alt up}{shift up}{ctrl up}
Return

^!NumPadAdd::
;Add stuff to incremental reading
	SendEvent ^c
	FileAppend, %Clipboard%`n, C:\Users\Coche\Dropbox\incrementalreading\windowsclipboard.txt
Return

^!NumPad9::
	{
	sleep 100
	sendraw, }}
	}
return

^!NumPad1::
	{
	sleep 40
	send {alt up}{shift up}{ctrl up}
	send ^x
	sendraw, {{c1::
	send ^v
	send {alt up}{shift up}{ctrl up}
	sleep 1000
	}
return

^!NumPad2::
	{
	sleep 40
	send {alt up}{shift up}{ctrl up}
	send ^x
	sendraw, {{c2::
	send ^v
	send {alt up}{shift up}{ctrl up}
	sleep 1000
	}
return

^!NumPad3::
	{
	sleep 40
	send {alt up}{shift up}{ctrl up}
	send ^x
	sendraw, {{c3::
	send ^v
	send {alt up}{shift up}{ctrl up}
	sleep 1000
	}
return

^!NumPad4::
	{
	sleep 40
	send {alt up}{shift up}{ctrl up}
	send ^x
	sendraw, {{c4::
	send ^v
	send {alt up}{shift up}{ctrl up}
	sleep 1000
	}
return

^!NumPad5::
	{
	sleep 40
	send {alt up}{shift up}{ctrl up}
	send ^x
	sendraw, {{c5::
	send ^v
	send {alt up}{shift up}{ctrl up}
	sleep 1000
	}
return

^!NumPad6::
	{
	sleep 40
	send {alt up}{shift up}{ctrl up}
	send ^x
	sendraw, {{c6::
	send ^v
	send {alt up}{shift up}{ctrl up}
	sleep 1000
	}
return

^!NumPad7::
	{
	sleep 40
	send {alt up}{shift up}{ctrl up}
	send ^x
	sendraw, {{c7::
	send ^v
	send {alt up}{shift up}{ctrl up}
	sleep 1000
	}
return

^!NumPad8::
	{
	sleep 40
	send {alt up}{shift up}{ctrl up}
	send ^x
	sendraw, {{c8::
	send ^v
	send {alt up}{shift up}{ctrl up}
	sleep 1000
	}
return

^!NumPad0::
	Sleep 40
	Send ^v
	ClipboardText = %Clipboard%  ;remove formatting
	
	Send {Shift down}{Right 3}{Shift up}^c
	StringLower, Clipboard, Clipboard
	Send ^v

	Clipboard = %ClipboardText%
	Send {Control down}{Shift down}{Left}{Control up}{Shift up}{Left}{Space}

;	{
;	sleep 100
;	Send {Shift down}{Down}{Shift up}^c{Right}
;	SetKeyDelay, 50
;	Send ^v{Up}
;	}
	send {alt up}{shift up}{ctrl up}
return

^NumPad0::
	Sleep 100
	ClipboardText = %Clipboard%  ;remove formatting
	
	Send {Shift down}{Right 3}{Shift up}^c
	StringLower, Clipboard, Clipboard
	Send ^v

	Clipboard = %ClipboardText%
return

^!Up::
	Sleep 75
	ClipboardText = %Clipboard% 	
	
	Send ^c
	StringUpper, Clipboard, Clipboard
	Send ^v

	Clipboard = %ClipboardText%
return

^!Down::
	Sleep 75
	ClipboardText = %Clipboard% 	
	
	Send ^c
	StringLower, Clipboard, Clipboard
	Send ^v

	Clipboard = %ClipboardText%
return


^!NumPadSub::
	{
	sleep 50
	send ^z
	sleep 50
	send ^z
	sleep 50
	send ^z
	sleep 50
	send ^z
	sleep 50
	send ^z
	}
return
