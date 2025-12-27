#!/bin/bash
browser="chrome"
exists=$(where AutoHotkey)

if [[ -z "$exists" ]]
then
	$browser "https://www.autohotkey.com"
fi
