FullscreenPage()
{	
	;target_pid := 27512 ; Replace with PID
	;WinTitle_PID := "ahk_pid " . target_pid
	
	WinActivate ("ahk_exe chrome.exe")
	Send "{F11}"
	Send "f"
}

FullscreenPage()

