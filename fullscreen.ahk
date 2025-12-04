FullscreenPage()
{
	autoHk:="AutoHotkey.exe"
	Run (autoHk " " A_Args[1] "fullscreen-roku.ahk")
	sleep (500)
	Run (autoHk " " A_Args[1] "fullscreen-youtube-tubi.ahk")
}

FullscreenPage()

