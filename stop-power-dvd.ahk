#include readPowerDvdPid.ahk

PausePage()
{
	target_pid := readPid()
	WinTitle_PID := "ahk_pid " . target_pid
	
	WinActivate (WinTitle_PID)
	Send "s"
}

PausePage()
