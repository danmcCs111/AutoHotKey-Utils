#include readPid.ahk

sendKey()
{
	target_pid := readPid(A_Args[1])
	WinTitle_PID := "ahk_pid " . target_pid
	
	WinActivate (WinTitle_PID)
	count := 1
	while count < A_Args.Length 
	{
		count += 1
		Send A_Args[count]
	}
}

sendKey()
