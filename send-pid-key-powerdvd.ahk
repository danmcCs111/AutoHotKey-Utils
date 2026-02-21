#include readPowerDvdPid.ahk

EscPage()
{
	target_pid := readPid()
	WinTitle_PID := "ahk_pid " . target_pid
	
	WinActivate (WinTitle_PID)
	count := 0
	while count < A_Args.Length 
	{
		count += 1
		Send A_Args[count]
	}
}

EscPage()
