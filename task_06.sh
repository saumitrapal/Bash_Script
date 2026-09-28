#!/bin/bash

#Note:
# if the transaction of package is install then exit code $? is 0.
# if not then the exit code something else like 2.

package=top

sudo dnf install $package -y >> package_install.log

if [ $? -eq 0 ]
then
	echo "The installation of $package was successful."
	echo "The new command is available here:"
	which $package
else
	echo "$package failed to install: $?"
fi
