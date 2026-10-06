#!/bin/bash
#case statement
finished=0

while [ $finished -ne 1 ]
do
	echo "what is your favorite distribution: "

	echo "1 - Arch"
	echo "2 - Fedora"
	echo "3 - Ubuntu"
	echo "4 - Mint"
	echo "5 - Debian"
	echo "6 - something else..."
	echo "7 - click to exit from script."

	read distro;

	case $distro in
		1) echo "Arch is rolling release.";;
		2) echo "Fedora is for daliy driver.";;
		3) echo "Ubuntu is popular for server and desktop.";;
		4) echo "Mint is popular for desktop and laptop.";;
		5) echo "Debian is communiti distribution.";;
		6) echo "You didn't enter an appropiate choice.";;
		7) finished=1;;
		*) echo "you choick option not here."
	esac
done
