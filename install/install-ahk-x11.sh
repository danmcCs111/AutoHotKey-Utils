#!/bin/bash
orgDir=`pwd`
cd "$(dirname "$0")"
cd ..
downloadUrl="https://github.com/phil294/AHK_X11/releases/download/1.0.7/ahk_x11.AppImage"
outputFile="ahk_x11.AppImage"

curl -L $downloadUrl --output $outputFile
echo "adjust permissions on image ../$outputFile"
sudo chmod 777 $outputFile

cd $orgDir
