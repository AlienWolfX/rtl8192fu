#!/bin/bash
#!Working on Ubuntu Impish
echo "RTL8192FU auto-installer script via dkms"
echo "Created by AlienWolfX"
echo -n "Install or Remove [I/R]: " 
read op
if [[ $op == I || $op == i ]]; then
	echo "Installing Driver"
		sudo apt-get update
		sudo apt-get autoremove
		sudo apt-get install -y linux-headers-$(uname -r) 
		sudo apt-get install make gcc bc build-essential dkms -y 
		sudo chmod a+x ./dkms-* 
		sudo ./dkms-install.sh
		sleep 3
		sudo modprobe 8192fu
		sleep 2
		echo "Installation Done Exiting..."
		sleep 2
		clear
		exit
elif [[ $op == R || $op == r ]]; then
 	echo "Removing Driver" 
 		sudo ./dkms-remove.sh
else
	echo "Not an option dummy :) Exiting..."
	sleep 2
	clear
	exit
fi
clear
