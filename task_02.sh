#!/bin/bash

#math function in bash scripting

num1=5
num2=6

#Addition result is
#frist we need to store result in a variable call result and the perform operation
#alternates: result=$((num1 + num2))
#alternates: echo $((num1 + num2))
result=$(expr "$num1" + "$num2")
echo "The addition result is: $result"

#Substraction result is
#frist we need to store result in a variable call result and the perform operation
#alternates: result=$((num1 - num2))
#alternates: echo $((num1 - num2))
result=$(expr "$num1" - "$num2")
echo "The substracion result is: $result"

#Multiplication result is
#frist we need to store result in a variable call result and the perform operation
#alternates: result=$((num1 \* num2))
#alternates: echo $((num1 * num2))
result=$(expr "$num1" \* "$num2")
echo "The multiplication result is: $result"

#Division result is
#frist we need to store result in a variable call result and the perform operation
#alternates: result=$((num1 / num2))
#alternates: echo $((num1 / num2))
result=$(expr "$num1" / "$num2")
echo "The division result is: $result"
