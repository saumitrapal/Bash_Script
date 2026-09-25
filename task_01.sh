#!/bin/bash

myname="pal"
myage=40

echo "Hello my name is $myname"
echo "I'm $myage year's old"

# this store output of the command pwd into a variable call store_output_of_command
# what it does this run in a background capture output into a variable call store_output_of_command
store_output_of_command=$(pwd)

echo "Output of pwd command: $store_output_of_command"


#some time we dont declear a variable is it came with system like a USERNAME type env to see more system variable
echo "my username is $USERNAME"
