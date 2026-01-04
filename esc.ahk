#include readPid.ahk

EscPage()
{
	target_pid := readPid()
	WinTitle_PID := "ahk_pid " . target_pid
	
	WinActivate (WinTitle_PID)
	sleep 150
	Send "{Esc}"
}

EscPage()
