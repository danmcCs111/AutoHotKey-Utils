#!/bin/bash
typeOs=`uname`

if [[ "$typeOs" == "Linux" ]]
then
	#no op
	echo "no linux ahk"
else
	$(dirname "$0")/install.cmd	
fi
