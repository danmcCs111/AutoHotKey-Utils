
scrollPages()
{
	; Check if any arguments were passed
	if (A_Args.Length > 0)
	{
	    ; Loop through each argument and display it
	    for index, arg in A_Args
	    {
		pageDownPage(arg)
	    }
	}
}

pageDownPage(Parameter1)
{
	Run ("chrome.exe " Parameter1)
	sleep (5000)
	send "{esc}"
	sleep 500
	Loop 7
	{
		send "{PgDn}"
		sleep 1000
	}
	savePage()
}
savePage()
{
	path := "C:\Users\danie\codebase\danmcCs111\SeleniumPython\"
	sleep 1000
	send ("^u")
	sleep (3000)
	send ("^s")
	sleep (2000)
	SendInput "rokuCat" 
	sleep (2000)
	send ("!d")
	sleep (1000)
	send ("^a")
	send (path)
	sleep 100
	SendInput "{enter}"
	sleep 1000
	send ("!s")
	sleep 1000
	send ("!y")
}

scrollPages()
