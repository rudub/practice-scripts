#!/bin/sh
#The script will calculate total disk and memory and displays the output
x=`df --total | tail -n 1 | awk '{print $2}'`
x=`expr $x / 1048576`

y=`free -m --total | tail -n 1 | awk '{print $2}'`

echo ---
echo "Total Disk:"  $x  "G"
echo "Total memory:" $y "MB"
echo ---
