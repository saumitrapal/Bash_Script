#!/bin/bash

#distro update script

#if distro based on debian and ubuntu
release_file=/etc/os-release
logfiles=/var/log/updater.log
errorlog=/var/log/updater_errors.log

#create a fn that check exit code
check_exit_status() {
	if [ $? -ne 0 ]
	then
		echo "An error occurred please check the $logfiles"
	fi
}



if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
	sudo apt update 1>>$logfiles 2>>$errorlog
	sudo apt dist-upgrade
	check_exit_status
fi

#if distro update on arch
if grep -q "Arch" $release_file
then
	sudo packman -Syu -y  1>>$logfiles 2>>$errorlog
	check_exit_status
fi

#if distro update on fedora
if grep -q "Fedora Linux" $release_file
then
	sudo dnf update -y 1>>$logfiles 2>>$errorlog
	check_exit_status
fi


