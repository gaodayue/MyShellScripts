#!/bin/bash
#Program:
#	User input 2 integer number; program outputs their product	
#History:
#2011/10/22	gaodayue	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "You SHOULD input 2 numbers, I will show their product!\n"
read -p "first number:" firstnum
read -p "second number:" secnum
total=$(($firstnum*$secnum))
echo "$firstnum X $secnum = $total"

exit 0
