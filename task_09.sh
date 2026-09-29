#!/bin/bash

directory=/etc

while [ -d $directory ]
do
	echo "The directory($directory) exist."
	sleep 5
done

echo "The directory doesn,t exist."
