#!/bin/bash
process="$1"
saveFile="$2"

orgDir=`pwd`
cd $(dirname $0)
pid=`taskList | grep "$process" | awk '{print $2}'`
echo $pid > "$saveFile"
cd $orgDir
