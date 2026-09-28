#!/bin/bash

#Note:
#this script looking for the dicrectory Bash_Script is exits in my home directory or not

if [ -d ~/Bash_Script ]
then
	echo "The dicrectory exist"
else
	echo "The dicrectory does not exist"
fi
