#!/bin/bash
orgDir=`pwd`
cd $(dirname $0)
pid=`taskList | grep PowerDVD.exe | awk '{print $2}'`
echo $pid > read-power-dvd-pid.txt
cd $orgDir
