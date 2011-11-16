#!/bin/bash
#Program:
#	Use for loop to calculate "1+2+3+...+100" result
#History:
#2011/10/23	gaodayue	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

sum=0
read -p "please input a number, I will calculate 1+2+...+your input:" nu
# only work for bash, not dash
for ((i=1;i<=$nu;i++))
do
	sum=$(($sum+$i))
done
echo "The result of '1+2+3+...$nu' is ==>$sum"

exit 0
