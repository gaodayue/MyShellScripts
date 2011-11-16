#!/bin/bash
#Program:
#	Use loop to calculate "1+2+3+...+100" result
#History:
#2011/10/23	gaodayue	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

index=0
sum=0
while [ $index -ne 100 ]
do
	index=$(($index+1))
	sum=$(($index+$sum))
done
echo "The result of '1+2+3+...100' is ==>$sum"

exit 0
