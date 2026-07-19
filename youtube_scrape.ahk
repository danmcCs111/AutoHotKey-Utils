
SavePage()
{
	path := A_Args[1] . ""
	path := Trim(path)
	;filename := A_Args[2] . ""
	;filename := Trim(filename)
	Run "chrome.exe https://www.youtube.com/feed/storefront?bp=EgCSAQMI9gOiBQIoBg%3D%3D"
	sleep (10000)
	send ("^u")
	sleep (3000)
	send ("^s")
	sleep (2000)
	send ("!d")
	send ("^a")
	send (path)
	sleep (100)
	SendInput "{enter}"
	;sleep (2000)
	;send ("!n")
	;sleep (2000)
	;SendInput "{Backspace}"
	;sleep (200)
	;send (filename)
	;sleep (1000)
	;send ("!s")
	;sleep 1000
}

SavePage()
