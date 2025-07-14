urlTest := "https://www.youtube.com/feed/storefront?bp=EgCSAQMI9gOiBQIoBg%3D%3D"
browser := "C:\Users\danie\Downloads\chrome-win\chrome-win\chrome.exe"

SavePage(browser, url)
{
	path := "C:\Users\danie\OneDrive\Desktop\page_scrapes"
	Run (browser, url)
	sleep (5000)
	send ("^u")
	sleep (3000)
	send ("^s")
	sleep (2000)
	send ("!d")
	send ("^a")
	send (path)
	sleep 100
	SendInput "{enter}"
	sleep 1000
	send ("!s")
}

SavePage(browser, urlTest)
