#!/bin/bash
pid=`taskList | grep PowerDVD.exe | awk '{print $2}'`
echo $pid > powerDvd-pid.txt
