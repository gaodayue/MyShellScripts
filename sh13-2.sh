#!/bin/bash
#Program:
#	Repeat question until user input correct answer.	
#History:
#2011/10/23	gaodayue	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

until [ "$yn" = "YES" -o "$yn" = "yes" ]
do
	read -p "Please input yes/YES to stop this program:" yn
done
echo "OK!you input the correct answer."

exit 0
