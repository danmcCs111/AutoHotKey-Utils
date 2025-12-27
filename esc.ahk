#include readPid.ahk

EscPage()
{
	;target_pid := readPid()
	;WinTitle_PID := "ahk_pid " . target_pid
	
	WinActivate ("ahk_exe chrome.exe")
	Send "{Esc}"
}

EscPage()