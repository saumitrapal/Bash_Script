#!/bin/bash

#distro update script

#if distro based on debian and ubuntu
release_file=/etc/os-release

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
	sudo apt update
	sudo apt dist-upgrade
fi

#if distro update on arch
if grep -q "Arch" $release_file
then
	sudo packman -Syu -y
fi

#if distro update on fedora
if grep -q "Fedora Linux" $release_file
then
	sudo dnf update -y
fi


