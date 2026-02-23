#!/bin/bash

browser="chrome"
requiredPackages=("pygetwindow" "pywinauto" "psutil")
typeOs=`uname`

function checkPipInstall()
{
	package="$1"
	installed=`pip list | grep "$package"`
	if [[ -n "$installed" ]]
	then
		echo "installed"
	else
		echo "missing"
	fi
}

function pipInstall()
{
	package="$1"
	python3 -m pip install $package --user
}

if [[ "$typeOs" == "Linux" ]]
then
	pythonInstalled=$(whereis python3 | sed 's/python3://g')
	if [[ -z $pythonInstalled ]]
	then
		sudo apt install python3
		sudo apt install python3-pip
	fi
	chromeInstalled=$(whereis google-chrome | sed 's/google-chrome://g')
	if [[ -z $pythonInstalled ]]
	then
		sudo apt install -y google-chrome-stable
	fi
else

	pythonInstalled=$(where python)
	if [[ -z $pythonInstalled ]]
	then
		echo "python not found. install from browser or terminal"
		echo "or check environment/path variables"
		winget install python
	fi
fi

for pack in ${requiredPackages[@]}
do
	val=$(checkPipInstall "$pack")
	echo $pack " - " $val
	if [ "$val" == "missing" ]
	then
		pipInstall $pack
	fi
done

read -p "Press <Enter> to Close"

