#!/bin/bash
typeOs=`uname`

if [[ "$typeOs" == "Linux" ]]
then
	#no op
	echo "no linux ahk"
else
	./install.cmd	
fi
