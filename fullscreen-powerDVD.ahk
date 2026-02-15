#include readPowerDvdPid.ahk

FullscreenPage()
{	
	target_pid := readPid()
	WinTitle_PID := "ahk_pid " . target_pid
	
	WinActivate (WinTitle_PID)
	Send "z"
}

FullscreenPage()
