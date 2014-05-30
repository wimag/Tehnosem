#!/bin/bash

echo "Dear  Mr. Tolstikov"
echo

echo "User name is `whoami` and i writing you from `hostname`."
echo

machine_type='coffe machine'
laptop-detect
case $? in 
0) machine_type='laptop'
;;
1) machine_type='desktop'
;;
*) machine_type='coffe machine'
esac

install_date=`ls -lct --time-style=+"%Y-%m-%d %H:%M:%S" /etc | tail -1 | awk '{print $6, $7}'`
install_seconds=`date +%s -d "$install_date"`
diff=(`date +%s`-$install_seconds)/86400

echo "Today's date is `LC_TIME=en_US date` and I have started on $machine_type with `uname -m` processor wich is working for `uptime | awk {'print $3'}`."
echo "I think user installed `uname -o` `uname -r` at $install_date, so it is about $((diff)) days"
echo
echo "I could find this in /etc:"
echo
echo "`cat /etc/*release*`"
echo

echo "And this is good"
echo

echo "Best regards"
echo "Your script"
