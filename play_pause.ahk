#include readPid.ahk

PausePage()
{
	target_pid := readPid()
	WinTitle_PID := "ahk_pid " . target_pid
	
	;WinActivate ("ahk_exe chrome.exe")
	WinActivate (WinTitle_PID)
	Send "{space}"
}

PausePage()
