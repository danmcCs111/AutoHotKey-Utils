#!/bin/bash
typeOs=`uname`
orgDir=`pwd`
cd $(dirname "$0")

if [[ "$typeOs" == "Linux" ]]
then
	#no op
	echo "no linux ahk"
else
	/install.cmd	
fi

cd $orgDir
