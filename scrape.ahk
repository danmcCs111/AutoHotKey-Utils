
SavePage()
{
	path:=A_ScriptDir "/SavePage"
	;filename := A_Args[1] ""
	url:=A_Args[2] ""
	url:="chrome.exe" " " Trim(url)
	
	;filename := Trim(filename)
	Run (url)
	sleep (8000)
	;send ("^u")
	;sleep (3000)
	send ("^s")
	sleep (2000)
	send ("!d")
	send ("^a")
	sleep (300)
	SendInput "{Backspace}"
	sleep (300)
	Send (A_ScriptDir)
	sleep (100)
	SendInput "{Enter}"
	;sleep (2000)
	;send ("!n")
	;sleep (2000)
	;SendInput "{Backspace}"
	;sleep (200)
	;send (filename)
	sleep (1000)
	send ("!s")
	sleep 1000
}

SavePage()
