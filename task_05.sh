#!/bin/bash

command=top

if command -v $command
then
	echo "$command is available, let's run it..."
	$command
else
	echo "$command is not available, installing it..."
	sudo dnf install -y $command
fi
$command
