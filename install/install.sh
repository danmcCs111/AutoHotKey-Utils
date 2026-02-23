#!/bin/bash
typeOs=`uname`
orgDir=`pwd`
cd $(dirname "$0")

if [[ "$typeOs" == "Linux" ]]
then
	./install-ahk-x11.sh
	echo "no linux ahk"
else
	./install.cmd	
fi

cd $orgDir
