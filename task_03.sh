#!/bin/bash
#Note
# The most common ones include:
#-eq (equal),
#-ne (not equal),
#-lt (less than),
#-le (less than or equal),
#-gt (greater than),
#-ge (greater than or equal) for numeric comparisons, as well as -e (exists),
#-d (directory),
#and -f (regular file) for file tests.

num=100

if [ $num -eq 100 ]
then
	echo "The conditionn is true"
else
	echo "The condition is false"
fi

